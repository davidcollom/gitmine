require 'spec_helper'

describe Gitmine::Issue do
  let(:issue) { Gitmine::Issue.new }
  [:id, :subject, :status].each do |a|
    it "should have an #{a}" do
      issue.should respond_to a
    end
  end

  describe "#get_for_commit" do
    it "should parse the commit message to find a commit_id and call #get" do
      commit_msg = 'A commit msg Issue #123'
      Gitmine::Issue.should_receive(:parse_for_issue_id).with(commit_msg)
      Gitmine::Issue.get_for_commit(commit_msg)
    end
  end

  describe "#find (class method)" do
    it "should build_via_issue_id" do
      issue = Gitmine::Issue.new
      Gitmine::Issue.should_receive(:new) { issue }
      issue.should_receive(:build_via_issue_id)
      Gitmine::Issue.find(123)
    end
  end

  describe "#build_via_issue_id" do
    before do
      @httparty = mock(:http_party_response, :parsed_response => {'issue' => { 'subject' => 'A subject', 'status' => {'name' => 'Completed'}}})
      issue.stub!(:http_get) { @httparty }
    end

    it "should get issue data and load attributes" do
      issue.should_receive(:build_via_issue_id).with(123) { @httparty }
      issue.build_via_issue_id(123)
    end

    it "should load attributes" do
      issue.build_via_issue_id(123)
      issue.id.should == 123
      issue.subject.should == 'A subject'
      issue.status.should == 'Completed'
    end
  end

  describe "#add_note" do
    let(:httparty_response) { mock(:http_party_response, :code => 200) }
    it "should PUT a note" do
      issue.stub!(:id) { 1 }
      issue.class.should_receive(:put).with('/1.xml', :query => {:notes => "Hello"}, :body => "") { httparty_response }
      issue.add_note("Hello")
    end
  end
end
