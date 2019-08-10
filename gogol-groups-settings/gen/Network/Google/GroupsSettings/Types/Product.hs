{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsSettings.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GroupsSettings.Types.Product where

import           Network.Google.GroupsSettings.Types.Sum
import           Network.Google.Prelude

-- | JSON template for Group resource
--
-- /See:/ 'groups' smart constructor.
data Groups =
  Groups'
    { _gWhoCanHideAbuse                         :: !(Maybe Text)
    , _gEmail                                   :: !(Maybe Text)
    , _gSendMessageDenyNotification             :: !(Maybe Text)
    , _gWhoCanEnterFreeFormTags                 :: !(Maybe Text)
    , _gWhoCanAssignTopics                      :: !(Maybe Text)
    , _gWhoCanPostMessage                       :: !(Maybe Text)
    , _gWhoCanDeleteTopics                      :: !(Maybe Text)
    , _gAllowExternalMembers                    :: !(Maybe Text)
    , _gWhoCanModifyMembers                     :: !(Maybe Text)
    , _gWhoCanAssistContent                     :: !(Maybe Text)
    , _gShowInGroupDirectory                    :: !(Maybe Text)
    , _gWhoCanUnmarkFavoriteReplyOnAnyTopic     :: !(Maybe Text)
    , _gWhoCanTakeTopics                        :: !(Maybe Text)
    , _gWhoCanLockTopics                        :: !(Maybe Text)
    , _gSpamModerationLevel                     :: !(Maybe Text)
    , _gKind                                    :: !Text
    , _gWhoCanDiscoverGroup                     :: !(Maybe Text)
    , _gWhoCanViewMembership                    :: !(Maybe Text)
    , _gMembersCanPostAsTheGroup                :: !(Maybe Text)
    , _gWhoCanMakeTopicsSticky                  :: !(Maybe Text)
    , _gWhoCanPostAnnouncements                 :: !(Maybe Text)
    , _gWhoCanViewGroup                         :: !(Maybe Text)
    , _gWhoCanJoin                              :: !(Maybe Text)
    , _gWhoCanModerateMembers                   :: !(Maybe Text)
    , _gArchiveOnly                             :: !(Maybe Text)
    , _gMaxMessageBytes                         :: !(Maybe (Textual Int32))
    , _gReplyTo                                 :: !(Maybe Text)
    , _gMessageModerationLevel                  :: !(Maybe Text)
    , _gWhoCanMarkFavoriteReplyOnAnyTopic       :: !(Maybe Text)
    , _gIncludeInGlobalAddressList              :: !(Maybe Text)
    , _gIsArchived                              :: !(Maybe Text)
    , _gWhoCanModerateContent                   :: !(Maybe Text)
    , _gCustomRolesEnabledForSettingsToBeMerged :: !(Maybe Text)
    , _gName                                    :: !(Maybe Text)
    , _gWhoCanUnassignTopic                     :: !(Maybe Text)
    , _gMessageDisplayFont                      :: !(Maybe Text)
    , _gIncludeCustomFooter                     :: !(Maybe Text)
    , _gFavoriteRepliesOnTop                    :: !(Maybe Text)
    , _gCustomReplyTo                           :: !(Maybe Text)
    , _gWhoCanAddReferences                     :: !(Maybe Text)
    , _gWhoCanContactOwner                      :: !(Maybe Text)
    , _gWhoCanAdd                               :: !(Maybe Text)
    , _gWhoCanInvite                            :: !(Maybe Text)
    , _gWhoCanLeaveGroup                        :: !(Maybe Text)
    , _gWhoCanApproveMembers                    :: !(Maybe Text)
    , _gWhoCanModifyTagsAndCategories           :: !(Maybe Text)
    , _gAllowGoogleCommunication                :: !(Maybe Text)
    , _gWhoCanMoveTopicsIn                      :: !(Maybe Text)
    , _gWhoCanMarkNoResponseNeeded              :: !(Maybe Text)
    , _gCustomFooterText                        :: !(Maybe Text)
    , _gWhoCanDeleteAnyPost                     :: !(Maybe Text)
    , _gWhoCanBanUsers                          :: !(Maybe Text)
    , _gWhoCanApproveMessages                   :: !(Maybe Text)
    , _gWhoCanMarkDuplicate                     :: !(Maybe Text)
    , _gEnableCollaborativeInbox                :: !(Maybe Text)
    , _gPrimaryLanguage                         :: !(Maybe Text)
    , _gDescription                             :: !(Maybe Text)
    , _gDefaultMessageDenyNotificationText      :: !(Maybe Text)
    , _gWhoCanMarkFavoriteReplyOnOwnTopic       :: !(Maybe Text)
    , _gAllowWebPosting                         :: !(Maybe Text)
    , _gWhoCanMoveTopicsOut                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Groups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gWhoCanHideAbuse'
--
-- * 'gEmail'
--
-- * 'gSendMessageDenyNotification'
--
-- * 'gWhoCanEnterFreeFormTags'
--
-- * 'gWhoCanAssignTopics'
--
-- * 'gWhoCanPostMessage'
--
-- * 'gWhoCanDeleteTopics'
--
-- * 'gAllowExternalMembers'
--
-- * 'gWhoCanModifyMembers'
--
-- * 'gWhoCanAssistContent'
--
-- * 'gShowInGroupDirectory'
--
-- * 'gWhoCanUnmarkFavoriteReplyOnAnyTopic'
--
-- * 'gWhoCanTakeTopics'
--
-- * 'gWhoCanLockTopics'
--
-- * 'gSpamModerationLevel'
--
-- * 'gKind'
--
-- * 'gWhoCanDiscoverGroup'
--
-- * 'gWhoCanViewMembership'
--
-- * 'gMembersCanPostAsTheGroup'
--
-- * 'gWhoCanMakeTopicsSticky'
--
-- * 'gWhoCanPostAnnouncements'
--
-- * 'gWhoCanViewGroup'
--
-- * 'gWhoCanJoin'
--
-- * 'gWhoCanModerateMembers'
--
-- * 'gArchiveOnly'
--
-- * 'gMaxMessageBytes'
--
-- * 'gReplyTo'
--
-- * 'gMessageModerationLevel'
--
-- * 'gWhoCanMarkFavoriteReplyOnAnyTopic'
--
-- * 'gIncludeInGlobalAddressList'
--
-- * 'gIsArchived'
--
-- * 'gWhoCanModerateContent'
--
-- * 'gCustomRolesEnabledForSettingsToBeMerged'
--
-- * 'gName'
--
-- * 'gWhoCanUnassignTopic'
--
-- * 'gMessageDisplayFont'
--
-- * 'gIncludeCustomFooter'
--
-- * 'gFavoriteRepliesOnTop'
--
-- * 'gCustomReplyTo'
--
-- * 'gWhoCanAddReferences'
--
-- * 'gWhoCanContactOwner'
--
-- * 'gWhoCanAdd'
--
-- * 'gWhoCanInvite'
--
-- * 'gWhoCanLeaveGroup'
--
-- * 'gWhoCanApproveMembers'
--
-- * 'gWhoCanModifyTagsAndCategories'
--
-- * 'gAllowGoogleCommunication'
--
-- * 'gWhoCanMoveTopicsIn'
--
-- * 'gWhoCanMarkNoResponseNeeded'
--
-- * 'gCustomFooterText'
--
-- * 'gWhoCanDeleteAnyPost'
--
-- * 'gWhoCanBanUsers'
--
-- * 'gWhoCanApproveMessages'
--
-- * 'gWhoCanMarkDuplicate'
--
-- * 'gEnableCollaborativeInbox'
--
-- * 'gPrimaryLanguage'
--
-- * 'gDescription'
--
-- * 'gDefaultMessageDenyNotificationText'
--
-- * 'gWhoCanMarkFavoriteReplyOnOwnTopic'
--
-- * 'gAllowWebPosting'
--
-- * 'gWhoCanMoveTopicsOut'
groups
    :: Groups
groups =
  Groups'
    { _gWhoCanHideAbuse = Nothing
    , _gEmail = Nothing
    , _gSendMessageDenyNotification = Nothing
    , _gWhoCanEnterFreeFormTags = Nothing
    , _gWhoCanAssignTopics = Nothing
    , _gWhoCanPostMessage = Nothing
    , _gWhoCanDeleteTopics = Nothing
    , _gAllowExternalMembers = Nothing
    , _gWhoCanModifyMembers = Nothing
    , _gWhoCanAssistContent = Nothing
    , _gShowInGroupDirectory = Nothing
    , _gWhoCanUnmarkFavoriteReplyOnAnyTopic = Nothing
    , _gWhoCanTakeTopics = Nothing
    , _gWhoCanLockTopics = Nothing
    , _gSpamModerationLevel = Nothing
    , _gKind = "groupsSettings#groups"
    , _gWhoCanDiscoverGroup = Nothing
    , _gWhoCanViewMembership = Nothing
    , _gMembersCanPostAsTheGroup = Nothing
    , _gWhoCanMakeTopicsSticky = Nothing
    , _gWhoCanPostAnnouncements = Nothing
    , _gWhoCanViewGroup = Nothing
    , _gWhoCanJoin = Nothing
    , _gWhoCanModerateMembers = Nothing
    , _gArchiveOnly = Nothing
    , _gMaxMessageBytes = Nothing
    , _gReplyTo = Nothing
    , _gMessageModerationLevel = Nothing
    , _gWhoCanMarkFavoriteReplyOnAnyTopic = Nothing
    , _gIncludeInGlobalAddressList = Nothing
    , _gIsArchived = Nothing
    , _gWhoCanModerateContent = Nothing
    , _gCustomRolesEnabledForSettingsToBeMerged = Nothing
    , _gName = Nothing
    , _gWhoCanUnassignTopic = Nothing
    , _gMessageDisplayFont = Nothing
    , _gIncludeCustomFooter = Nothing
    , _gFavoriteRepliesOnTop = Nothing
    , _gCustomReplyTo = Nothing
    , _gWhoCanAddReferences = Nothing
    , _gWhoCanContactOwner = Nothing
    , _gWhoCanAdd = Nothing
    , _gWhoCanInvite = Nothing
    , _gWhoCanLeaveGroup = Nothing
    , _gWhoCanApproveMembers = Nothing
    , _gWhoCanModifyTagsAndCategories = Nothing
    , _gAllowGoogleCommunication = Nothing
    , _gWhoCanMoveTopicsIn = Nothing
    , _gWhoCanMarkNoResponseNeeded = Nothing
    , _gCustomFooterText = Nothing
    , _gWhoCanDeleteAnyPost = Nothing
    , _gWhoCanBanUsers = Nothing
    , _gWhoCanApproveMessages = Nothing
    , _gWhoCanMarkDuplicate = Nothing
    , _gEnableCollaborativeInbox = Nothing
    , _gPrimaryLanguage = Nothing
    , _gDescription = Nothing
    , _gDefaultMessageDenyNotificationText = Nothing
    , _gWhoCanMarkFavoriteReplyOnOwnTopic = Nothing
    , _gAllowWebPosting = Nothing
    , _gWhoCanMoveTopicsOut = Nothing
    }


-- | Permission to hide posts by reporting them as abuse. Possible values
-- are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanHideAbuse :: Lens' Groups (Maybe Text)
gWhoCanHideAbuse
  = lens _gWhoCanHideAbuse
      (\ s a -> s{_gWhoCanHideAbuse = a})

-- | Email id of the group
gEmail :: Lens' Groups (Maybe Text)
gEmail = lens _gEmail (\ s a -> s{_gEmail = a})

-- | Should the member be notified if his message is denied by owner.
gSendMessageDenyNotification :: Lens' Groups (Maybe Text)
gSendMessageDenyNotification
  = lens _gSendMessageDenyNotification
      (\ s a -> s{_gSendMessageDenyNotification = a})

-- | Permission to enter free form tags for topics in a forum. Possible
-- values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
-- ALL_MEMBERS
gWhoCanEnterFreeFormTags :: Lens' Groups (Maybe Text)
gWhoCanEnterFreeFormTags
  = lens _gWhoCanEnterFreeFormTags
      (\ s a -> s{_gWhoCanEnterFreeFormTags = a})

-- | Permission to assign topics in a forum to another user. Possible values
-- are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanAssignTopics :: Lens' Groups (Maybe Text)
gWhoCanAssignTopics
  = lens _gWhoCanAssignTopics
      (\ s a -> s{_gWhoCanAssignTopics = a})

-- | Permissions to post messages to the group. Possible values are:
-- NONE_CAN_POST ALL_MANAGERS_CAN_POST ALL_MEMBERS_CAN_POST
-- ALL_OWNERS_CAN_POST ALL_IN_DOMAIN_CAN_POST ANYONE_CAN_POST
gWhoCanPostMessage :: Lens' Groups (Maybe Text)
gWhoCanPostMessage
  = lens _gWhoCanPostMessage
      (\ s a -> s{_gWhoCanPostMessage = a})

-- | Permission to delete topics. Possible values are: NONE OWNERS_ONLY
-- OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanDeleteTopics :: Lens' Groups (Maybe Text)
gWhoCanDeleteTopics
  = lens _gWhoCanDeleteTopics
      (\ s a -> s{_gWhoCanDeleteTopics = a})

-- | Are external members allowed to join the group.
gAllowExternalMembers :: Lens' Groups (Maybe Text)
gAllowExternalMembers
  = lens _gAllowExternalMembers
      (\ s a -> s{_gAllowExternalMembers = a})

-- | Permission to modify members (change member roles). Possible values are:
-- NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanModifyMembers :: Lens' Groups (Maybe Text)
gWhoCanModifyMembers
  = lens _gWhoCanModifyMembers
      (\ s a -> s{_gWhoCanModifyMembers = a})

-- | Permission for content assistants. Possible values are: Possible values
-- are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanAssistContent :: Lens' Groups (Maybe Text)
gWhoCanAssistContent
  = lens _gWhoCanAssistContent
      (\ s a -> s{_gWhoCanAssistContent = a})

-- | Is the group listed in groups directory
gShowInGroupDirectory :: Lens' Groups (Maybe Text)
gShowInGroupDirectory
  = lens _gShowInGroupDirectory
      (\ s a -> s{_gShowInGroupDirectory = a})

-- | Permission to unmark any post from a favorite reply. Possible values
-- are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanUnmarkFavoriteReplyOnAnyTopic :: Lens' Groups (Maybe Text)
gWhoCanUnmarkFavoriteReplyOnAnyTopic
  = lens _gWhoCanUnmarkFavoriteReplyOnAnyTopic
      (\ s a ->
         s{_gWhoCanUnmarkFavoriteReplyOnAnyTopic = a})

-- | Permission to take topics in a forum. Possible values are: NONE
-- OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanTakeTopics :: Lens' Groups (Maybe Text)
gWhoCanTakeTopics
  = lens _gWhoCanTakeTopics
      (\ s a -> s{_gWhoCanTakeTopics = a})

-- | Permission to lock topics. Possible values are: NONE OWNERS_ONLY
-- OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanLockTopics :: Lens' Groups (Maybe Text)
gWhoCanLockTopics
  = lens _gWhoCanLockTopics
      (\ s a -> s{_gWhoCanLockTopics = a})

-- | Moderation level for messages detected as spam. Possible values are:
-- ALLOW MODERATE SILENTLY_MODERATE REJECT
gSpamModerationLevel :: Lens' Groups (Maybe Text)
gSpamModerationLevel
  = lens _gSpamModerationLevel
      (\ s a -> s{_gSpamModerationLevel = a})

-- | The type of the resource.
gKind :: Lens' Groups Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | Permission for who can discover the group. Possible values are:
-- ALL_MEMBERS_CAN_DISCOVER ALL_IN_DOMAIN_CAN_DISCOVER ANYONE_CAN_DISCOVER
gWhoCanDiscoverGroup :: Lens' Groups (Maybe Text)
gWhoCanDiscoverGroup
  = lens _gWhoCanDiscoverGroup
      (\ s a -> s{_gWhoCanDiscoverGroup = a})

-- | Permissions to view membership. Possible values are:
-- ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
-- ALL_OWNERS_CAN_VIEW
gWhoCanViewMembership :: Lens' Groups (Maybe Text)
gWhoCanViewMembership
  = lens _gWhoCanViewMembership
      (\ s a -> s{_gWhoCanViewMembership = a})

-- | Can members post using the group email address.
gMembersCanPostAsTheGroup :: Lens' Groups (Maybe Text)
gMembersCanPostAsTheGroup
  = lens _gMembersCanPostAsTheGroup
      (\ s a -> s{_gMembersCanPostAsTheGroup = a})

-- | Permission to make topics appear at the top of the topic list. Possible
-- values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
-- ALL_MEMBERS
gWhoCanMakeTopicsSticky :: Lens' Groups (Maybe Text)
gWhoCanMakeTopicsSticky
  = lens _gWhoCanMakeTopicsSticky
      (\ s a -> s{_gWhoCanMakeTopicsSticky = a})

-- | Permission to post announcements, a special topic type. Possible values
-- are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanPostAnnouncements :: Lens' Groups (Maybe Text)
gWhoCanPostAnnouncements
  = lens _gWhoCanPostAnnouncements
      (\ s a -> s{_gWhoCanPostAnnouncements = a})

-- | Permissions to view group. Possible values are: ANYONE_CAN_VIEW
-- ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
-- ALL_OWNERS_CAN_VIEW
gWhoCanViewGroup :: Lens' Groups (Maybe Text)
gWhoCanViewGroup
  = lens _gWhoCanViewGroup
      (\ s a -> s{_gWhoCanViewGroup = a})

-- | Permissions to join the group. Possible values are: ANYONE_CAN_JOIN
-- ALL_IN_DOMAIN_CAN_JOIN INVITED_CAN_JOIN CAN_REQUEST_TO_JOIN
gWhoCanJoin :: Lens' Groups (Maybe Text)
gWhoCanJoin
  = lens _gWhoCanJoin (\ s a -> s{_gWhoCanJoin = a})

-- | Permission for membership moderation. Possible values are: NONE
-- OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanModerateMembers :: Lens' Groups (Maybe Text)
gWhoCanModerateMembers
  = lens _gWhoCanModerateMembers
      (\ s a -> s{_gWhoCanModerateMembers = a})

-- | If the group is archive only
gArchiveOnly :: Lens' Groups (Maybe Text)
gArchiveOnly
  = lens _gArchiveOnly (\ s a -> s{_gArchiveOnly = a})

-- | Maximum message size allowed.
gMaxMessageBytes :: Lens' Groups (Maybe Int32)
gMaxMessageBytes
  = lens _gMaxMessageBytes
      (\ s a -> s{_gMaxMessageBytes = a})
      . mapping _Coerce

-- | Whome should the default reply to a message go to. Possible values are:
-- REPLY_TO_CUSTOM REPLY_TO_SENDER REPLY_TO_LIST REPLY_TO_OWNER
-- REPLY_TO_IGNORE REPLY_TO_MANAGERS
gReplyTo :: Lens' Groups (Maybe Text)
gReplyTo = lens _gReplyTo (\ s a -> s{_gReplyTo = a})

-- | Moderation level for messages. Possible values are:
-- MODERATE_ALL_MESSAGES MODERATE_NON_MEMBERS MODERATE_NEW_MEMBERS
-- MODERATE_NONE
gMessageModerationLevel :: Lens' Groups (Maybe Text)
gMessageModerationLevel
  = lens _gMessageModerationLevel
      (\ s a -> s{_gMessageModerationLevel = a})

-- | Permission to mark any other user\'s post as a favorite reply. Possible
-- values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
-- ALL_MEMBERS
gWhoCanMarkFavoriteReplyOnAnyTopic :: Lens' Groups (Maybe Text)
gWhoCanMarkFavoriteReplyOnAnyTopic
  = lens _gWhoCanMarkFavoriteReplyOnAnyTopic
      (\ s a -> s{_gWhoCanMarkFavoriteReplyOnAnyTopic = a})

-- | If this groups should be included in global address list or not.
gIncludeInGlobalAddressList :: Lens' Groups (Maybe Text)
gIncludeInGlobalAddressList
  = lens _gIncludeInGlobalAddressList
      (\ s a -> s{_gIncludeInGlobalAddressList = a})

-- | If the contents of the group are archived.
gIsArchived :: Lens' Groups (Maybe Text)
gIsArchived
  = lens _gIsArchived (\ s a -> s{_gIsArchived = a})

-- | Permission for content moderation. Possible values are: NONE OWNERS_ONLY
-- OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanModerateContent :: Lens' Groups (Maybe Text)
gWhoCanModerateContent
  = lens _gWhoCanModerateContent
      (\ s a -> s{_gWhoCanModerateContent = a})

-- | If any of the settings that will be merged have custom roles which is
-- anything other than owners, managers, or group scopes.
gCustomRolesEnabledForSettingsToBeMerged :: Lens' Groups (Maybe Text)
gCustomRolesEnabledForSettingsToBeMerged
  = lens _gCustomRolesEnabledForSettingsToBeMerged
      (\ s a ->
         s{_gCustomRolesEnabledForSettingsToBeMerged = a})

-- | Name of the Group
gName :: Lens' Groups (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Permission to unassign any topic in a forum. Possible values are: NONE
-- OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanUnassignTopic :: Lens' Groups (Maybe Text)
gWhoCanUnassignTopic
  = lens _gWhoCanUnassignTopic
      (\ s a -> s{_gWhoCanUnassignTopic = a})

-- | Default message display font. Possible values are: DEFAULT_FONT
-- FIXED_WIDTH_FONT
gMessageDisplayFont :: Lens' Groups (Maybe Text)
gMessageDisplayFont
  = lens _gMessageDisplayFont
      (\ s a -> s{_gMessageDisplayFont = a})

-- | Whether to include custom footer.
gIncludeCustomFooter :: Lens' Groups (Maybe Text)
gIncludeCustomFooter
  = lens _gIncludeCustomFooter
      (\ s a -> s{_gIncludeCustomFooter = a})

-- | If favorite replies should be displayed above other replies.
gFavoriteRepliesOnTop :: Lens' Groups (Maybe Text)
gFavoriteRepliesOnTop
  = lens _gFavoriteRepliesOnTop
      (\ s a -> s{_gFavoriteRepliesOnTop = a})

-- | Default email to which reply to any message should go.
gCustomReplyTo :: Lens' Groups (Maybe Text)
gCustomReplyTo
  = lens _gCustomReplyTo
      (\ s a -> s{_gCustomReplyTo = a})

-- | Permission to add references to a topic. Possible values are: NONE
-- OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanAddReferences :: Lens' Groups (Maybe Text)
gWhoCanAddReferences
  = lens _gWhoCanAddReferences
      (\ s a -> s{_gWhoCanAddReferences = a})

-- | Permission to contact owner of the group via web UI. Possible values
-- are: ANYONE_CAN_CONTACT ALL_IN_DOMAIN_CAN_CONTACT
-- ALL_MEMBERS_CAN_CONTACT ALL_MANAGERS_CAN_CONTACT
gWhoCanContactOwner :: Lens' Groups (Maybe Text)
gWhoCanContactOwner
  = lens _gWhoCanContactOwner
      (\ s a -> s{_gWhoCanContactOwner = a})

-- | Permissions to add members. Possible values are: ALL_MANAGERS_CAN_ADD
-- ALL_OWNERS_CAN_ADD ALL_MEMBERS_CAN_ADD NONE_CAN_ADD
gWhoCanAdd :: Lens' Groups (Maybe Text)
gWhoCanAdd
  = lens _gWhoCanAdd (\ s a -> s{_gWhoCanAdd = a})

-- | Permissions to invite members. Possible values are:
-- ALL_MEMBERS_CAN_INVITE ALL_MANAGERS_CAN_INVITE ALL_OWNERS_CAN_INVITE
-- NONE_CAN_INVITE
gWhoCanInvite :: Lens' Groups (Maybe Text)
gWhoCanInvite
  = lens _gWhoCanInvite
      (\ s a -> s{_gWhoCanInvite = a})

-- | Permission to leave the group. Possible values are:
-- ALL_MANAGERS_CAN_LEAVE ALL_OWNERS_CAN_LEAVE ALL_MEMBERS_CAN_LEAVE
-- NONE_CAN_LEAVE
gWhoCanLeaveGroup :: Lens' Groups (Maybe Text)
gWhoCanLeaveGroup
  = lens _gWhoCanLeaveGroup
      (\ s a -> s{_gWhoCanLeaveGroup = a})

-- | Permission to approve members. Possible values are:
-- ALL_OWNERS_CAN_APPROVE ALL_MANAGERS_CAN_APPROVE ALL_MEMBERS_CAN_APPROVE
-- NONE_CAN_APPROVE
gWhoCanApproveMembers :: Lens' Groups (Maybe Text)
gWhoCanApproveMembers
  = lens _gWhoCanApproveMembers
      (\ s a -> s{_gWhoCanApproveMembers = a})

-- | Permission to change tags and categories. Possible values are: NONE
-- OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanModifyTagsAndCategories :: Lens' Groups (Maybe Text)
gWhoCanModifyTagsAndCategories
  = lens _gWhoCanModifyTagsAndCategories
      (\ s a -> s{_gWhoCanModifyTagsAndCategories = a})

-- | Is google allowed to contact admins.
gAllowGoogleCommunication :: Lens' Groups (Maybe Text)
gAllowGoogleCommunication
  = lens _gAllowGoogleCommunication
      (\ s a -> s{_gAllowGoogleCommunication = a})

-- | Permission to move topics into the group or forum. Possible values are:
-- NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanMoveTopicsIn :: Lens' Groups (Maybe Text)
gWhoCanMoveTopicsIn
  = lens _gWhoCanMoveTopicsIn
      (\ s a -> s{_gWhoCanMoveTopicsIn = a})

-- | Permission to mark a topic as not needing a response. Possible values
-- are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanMarkNoResponseNeeded :: Lens' Groups (Maybe Text)
gWhoCanMarkNoResponseNeeded
  = lens _gWhoCanMarkNoResponseNeeded
      (\ s a -> s{_gWhoCanMarkNoResponseNeeded = a})

-- | Custom footer text.
gCustomFooterText :: Lens' Groups (Maybe Text)
gCustomFooterText
  = lens _gCustomFooterText
      (\ s a -> s{_gCustomFooterText = a})

-- | Permission to delete replies to topics. Possible values are: NONE
-- OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanDeleteAnyPost :: Lens' Groups (Maybe Text)
gWhoCanDeleteAnyPost
  = lens _gWhoCanDeleteAnyPost
      (\ s a -> s{_gWhoCanDeleteAnyPost = a})

-- | Permission to ban users. Possible values are: NONE OWNERS_ONLY
-- OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanBanUsers :: Lens' Groups (Maybe Text)
gWhoCanBanUsers
  = lens _gWhoCanBanUsers
      (\ s a -> s{_gWhoCanBanUsers = a})

-- | Permission to approve pending messages in the moderation queue. Possible
-- values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanApproveMessages :: Lens' Groups (Maybe Text)
gWhoCanApproveMessages
  = lens _gWhoCanApproveMessages
      (\ s a -> s{_gWhoCanApproveMessages = a})

-- | Permission to mark a topic as a duplicate of another topic. Possible
-- values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
-- ALL_MEMBERS
gWhoCanMarkDuplicate :: Lens' Groups (Maybe Text)
gWhoCanMarkDuplicate
  = lens _gWhoCanMarkDuplicate
      (\ s a -> s{_gWhoCanMarkDuplicate = a})

-- | If a primary Collab Inbox feature is enabled.
gEnableCollaborativeInbox :: Lens' Groups (Maybe Text)
gEnableCollaborativeInbox
  = lens _gEnableCollaborativeInbox
      (\ s a -> s{_gEnableCollaborativeInbox = a})

-- | Primary language for the group.
gPrimaryLanguage :: Lens' Groups (Maybe Text)
gPrimaryLanguage
  = lens _gPrimaryLanguage
      (\ s a -> s{_gPrimaryLanguage = a})

-- | Description of the group
gDescription :: Lens' Groups (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | Default message deny notification message
gDefaultMessageDenyNotificationText :: Lens' Groups (Maybe Text)
gDefaultMessageDenyNotificationText
  = lens _gDefaultMessageDenyNotificationText
      (\ s a ->
         s{_gDefaultMessageDenyNotificationText = a})

-- | Permission to mark a post for a topic they started as a favorite reply.
-- Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
-- ALL_MEMBERS
gWhoCanMarkFavoriteReplyOnOwnTopic :: Lens' Groups (Maybe Text)
gWhoCanMarkFavoriteReplyOnOwnTopic
  = lens _gWhoCanMarkFavoriteReplyOnOwnTopic
      (\ s a -> s{_gWhoCanMarkFavoriteReplyOnOwnTopic = a})

-- | If posting from web is allowed.
gAllowWebPosting :: Lens' Groups (Maybe Text)
gAllowWebPosting
  = lens _gAllowWebPosting
      (\ s a -> s{_gAllowWebPosting = a})

-- | Permission to move topics out of the group or forum. Possible values
-- are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
gWhoCanMoveTopicsOut :: Lens' Groups (Maybe Text)
gWhoCanMoveTopicsOut
  = lens _gWhoCanMoveTopicsOut
      (\ s a -> s{_gWhoCanMoveTopicsOut = a})

instance FromJSON Groups where
        parseJSON
          = withObject "Groups"
              (\ o ->
                 Groups' <$>
                   (o .:? "whoCanHideAbuse") <*> (o .:? "email") <*>
                     (o .:? "sendMessageDenyNotification")
                     <*> (o .:? "whoCanEnterFreeFormTags")
                     <*> (o .:? "whoCanAssignTopics")
                     <*> (o .:? "whoCanPostMessage")
                     <*> (o .:? "whoCanDeleteTopics")
                     <*> (o .:? "allowExternalMembers")
                     <*> (o .:? "whoCanModifyMembers")
                     <*> (o .:? "whoCanAssistContent")
                     <*> (o .:? "showInGroupDirectory")
                     <*> (o .:? "whoCanUnmarkFavoriteReplyOnAnyTopic")
                     <*> (o .:? "whoCanTakeTopics")
                     <*> (o .:? "whoCanLockTopics")
                     <*> (o .:? "spamModerationLevel")
                     <*> (o .:? "kind" .!= "groupsSettings#groups")
                     <*> (o .:? "whoCanDiscoverGroup")
                     <*> (o .:? "whoCanViewMembership")
                     <*> (o .:? "membersCanPostAsTheGroup")
                     <*> (o .:? "whoCanMakeTopicsSticky")
                     <*> (o .:? "whoCanPostAnnouncements")
                     <*> (o .:? "whoCanViewGroup")
                     <*> (o .:? "whoCanJoin")
                     <*> (o .:? "whoCanModerateMembers")
                     <*> (o .:? "archiveOnly")
                     <*> (o .:? "maxMessageBytes")
                     <*> (o .:? "replyTo")
                     <*> (o .:? "messageModerationLevel")
                     <*> (o .:? "whoCanMarkFavoriteReplyOnAnyTopic")
                     <*> (o .:? "includeInGlobalAddressList")
                     <*> (o .:? "isArchived")
                     <*> (o .:? "whoCanModerateContent")
                     <*> (o .:? "customRolesEnabledForSettingsToBeMerged")
                     <*> (o .:? "name")
                     <*> (o .:? "whoCanUnassignTopic")
                     <*> (o .:? "messageDisplayFont")
                     <*> (o .:? "includeCustomFooter")
                     <*> (o .:? "favoriteRepliesOnTop")
                     <*> (o .:? "customReplyTo")
                     <*> (o .:? "whoCanAddReferences")
                     <*> (o .:? "whoCanContactOwner")
                     <*> (o .:? "whoCanAdd")
                     <*> (o .:? "whoCanInvite")
                     <*> (o .:? "whoCanLeaveGroup")
                     <*> (o .:? "whoCanApproveMembers")
                     <*> (o .:? "whoCanModifyTagsAndCategories")
                     <*> (o .:? "allowGoogleCommunication")
                     <*> (o .:? "whoCanMoveTopicsIn")
                     <*> (o .:? "whoCanMarkNoResponseNeeded")
                     <*> (o .:? "customFooterText")
                     <*> (o .:? "whoCanDeleteAnyPost")
                     <*> (o .:? "whoCanBanUsers")
                     <*> (o .:? "whoCanApproveMessages")
                     <*> (o .:? "whoCanMarkDuplicate")
                     <*> (o .:? "enableCollaborativeInbox")
                     <*> (o .:? "primaryLanguage")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultMessageDenyNotificationText")
                     <*> (o .:? "whoCanMarkFavoriteReplyOnOwnTopic")
                     <*> (o .:? "allowWebPosting")
                     <*> (o .:? "whoCanMoveTopicsOut"))

instance ToJSON Groups where
        toJSON Groups'{..}
          = object
              (catMaybes
                 [("whoCanHideAbuse" .=) <$> _gWhoCanHideAbuse,
                  ("email" .=) <$> _gEmail,
                  ("sendMessageDenyNotification" .=) <$>
                    _gSendMessageDenyNotification,
                  ("whoCanEnterFreeFormTags" .=) <$>
                    _gWhoCanEnterFreeFormTags,
                  ("whoCanAssignTopics" .=) <$> _gWhoCanAssignTopics,
                  ("whoCanPostMessage" .=) <$> _gWhoCanPostMessage,
                  ("whoCanDeleteTopics" .=) <$> _gWhoCanDeleteTopics,
                  ("allowExternalMembers" .=) <$>
                    _gAllowExternalMembers,
                  ("whoCanModifyMembers" .=) <$> _gWhoCanModifyMembers,
                  ("whoCanAssistContent" .=) <$> _gWhoCanAssistContent,
                  ("showInGroupDirectory" .=) <$>
                    _gShowInGroupDirectory,
                  ("whoCanUnmarkFavoriteReplyOnAnyTopic" .=) <$>
                    _gWhoCanUnmarkFavoriteReplyOnAnyTopic,
                  ("whoCanTakeTopics" .=) <$> _gWhoCanTakeTopics,
                  ("whoCanLockTopics" .=) <$> _gWhoCanLockTopics,
                  ("spamModerationLevel" .=) <$> _gSpamModerationLevel,
                  Just ("kind" .= _gKind),
                  ("whoCanDiscoverGroup" .=) <$> _gWhoCanDiscoverGroup,
                  ("whoCanViewMembership" .=) <$>
                    _gWhoCanViewMembership,
                  ("membersCanPostAsTheGroup" .=) <$>
                    _gMembersCanPostAsTheGroup,
                  ("whoCanMakeTopicsSticky" .=) <$>
                    _gWhoCanMakeTopicsSticky,
                  ("whoCanPostAnnouncements" .=) <$>
                    _gWhoCanPostAnnouncements,
                  ("whoCanViewGroup" .=) <$> _gWhoCanViewGroup,
                  ("whoCanJoin" .=) <$> _gWhoCanJoin,
                  ("whoCanModerateMembers" .=) <$>
                    _gWhoCanModerateMembers,
                  ("archiveOnly" .=) <$> _gArchiveOnly,
                  ("maxMessageBytes" .=) <$> _gMaxMessageBytes,
                  ("replyTo" .=) <$> _gReplyTo,
                  ("messageModerationLevel" .=) <$>
                    _gMessageModerationLevel,
                  ("whoCanMarkFavoriteReplyOnAnyTopic" .=) <$>
                    _gWhoCanMarkFavoriteReplyOnAnyTopic,
                  ("includeInGlobalAddressList" .=) <$>
                    _gIncludeInGlobalAddressList,
                  ("isArchived" .=) <$> _gIsArchived,
                  ("whoCanModerateContent" .=) <$>
                    _gWhoCanModerateContent,
                  ("customRolesEnabledForSettingsToBeMerged" .=) <$>
                    _gCustomRolesEnabledForSettingsToBeMerged,
                  ("name" .=) <$> _gName,
                  ("whoCanUnassignTopic" .=) <$> _gWhoCanUnassignTopic,
                  ("messageDisplayFont" .=) <$> _gMessageDisplayFont,
                  ("includeCustomFooter" .=) <$> _gIncludeCustomFooter,
                  ("favoriteRepliesOnTop" .=) <$>
                    _gFavoriteRepliesOnTop,
                  ("customReplyTo" .=) <$> _gCustomReplyTo,
                  ("whoCanAddReferences" .=) <$> _gWhoCanAddReferences,
                  ("whoCanContactOwner" .=) <$> _gWhoCanContactOwner,
                  ("whoCanAdd" .=) <$> _gWhoCanAdd,
                  ("whoCanInvite" .=) <$> _gWhoCanInvite,
                  ("whoCanLeaveGroup" .=) <$> _gWhoCanLeaveGroup,
                  ("whoCanApproveMembers" .=) <$>
                    _gWhoCanApproveMembers,
                  ("whoCanModifyTagsAndCategories" .=) <$>
                    _gWhoCanModifyTagsAndCategories,
                  ("allowGoogleCommunication" .=) <$>
                    _gAllowGoogleCommunication,
                  ("whoCanMoveTopicsIn" .=) <$> _gWhoCanMoveTopicsIn,
                  ("whoCanMarkNoResponseNeeded" .=) <$>
                    _gWhoCanMarkNoResponseNeeded,
                  ("customFooterText" .=) <$> _gCustomFooterText,
                  ("whoCanDeleteAnyPost" .=) <$> _gWhoCanDeleteAnyPost,
                  ("whoCanBanUsers" .=) <$> _gWhoCanBanUsers,
                  ("whoCanApproveMessages" .=) <$>
                    _gWhoCanApproveMessages,
                  ("whoCanMarkDuplicate" .=) <$> _gWhoCanMarkDuplicate,
                  ("enableCollaborativeInbox" .=) <$>
                    _gEnableCollaborativeInbox,
                  ("primaryLanguage" .=) <$> _gPrimaryLanguage,
                  ("description" .=) <$> _gDescription,
                  ("defaultMessageDenyNotificationText" .=) <$>
                    _gDefaultMessageDenyNotificationText,
                  ("whoCanMarkFavoriteReplyOnOwnTopic" .=) <$>
                    _gWhoCanMarkFavoriteReplyOnOwnTopic,
                  ("allowWebPosting" .=) <$> _gAllowWebPosting,
                  ("whoCanMoveTopicsOut" .=) <$>
                    _gWhoCanMoveTopicsOut])
