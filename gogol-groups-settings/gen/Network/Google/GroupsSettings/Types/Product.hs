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

import Network.Google.GroupsSettings.Types.Sum
import Network.Google.Prelude

-- | JSON template for Group resource
--
-- /See:/ 'groups' smart constructor.
data Groups =
  Groups'
    { _gWhoCanHideAbuse :: !(Maybe Text)
    , _gEmail :: !(Maybe Text)
    , _gSendMessageDenyNotification :: !(Maybe Text)
    , _gWhoCanEnterFreeFormTags :: !(Maybe Text)
    , _gWhoCanAssignTopics :: !(Maybe Text)
    , _gWhoCanPostMessage :: !(Maybe Text)
    , _gWhoCanDeleteTopics :: !(Maybe Text)
    , _gDefaultSender :: !(Maybe Text)
    , _gAllowExternalMembers :: !(Maybe Text)
    , _gWhoCanModifyMembers :: !(Maybe Text)
    , _gWhoCanAssistContent :: !(Maybe Text)
    , _gShowInGroupDirectory :: !(Maybe Text)
    , _gWhoCanUnmarkFavoriteReplyOnAnyTopic :: !(Maybe Text)
    , _gWhoCanTakeTopics :: !(Maybe Text)
    , _gWhoCanLockTopics :: !(Maybe Text)
    , _gSpamModerationLevel :: !(Maybe Text)
    , _gKind :: !Text
    , _gWhoCanDiscoverGroup :: !(Maybe Text)
    , _gWhoCanViewMembership :: !(Maybe Text)
    , _gMembersCanPostAsTheGroup :: !(Maybe Text)
    , _gWhoCanMakeTopicsSticky :: !(Maybe Text)
    , _gWhoCanPostAnnouncements :: !(Maybe Text)
    , _gWhoCanViewGroup :: !(Maybe Text)
    , _gWhoCanJoin :: !(Maybe Text)
    , _gWhoCanModerateMembers :: !(Maybe Text)
    , _gArchiveOnly :: !(Maybe Text)
    , _gMaxMessageBytes :: !(Maybe (Textual Int32))
    , _gReplyTo :: !(Maybe Text)
    , _gMessageModerationLevel :: !(Maybe Text)
    , _gWhoCanMarkFavoriteReplyOnAnyTopic :: !(Maybe Text)
    , _gIncludeInGlobalAddressList :: !(Maybe Text)
    , _gIsArchived :: !(Maybe Text)
    , _gWhoCanModerateContent :: !(Maybe Text)
    , _gCustomRolesEnabledForSettingsToBeMerged :: !(Maybe Text)
    , _gName :: !(Maybe Text)
    , _gWhoCanUnassignTopic :: !(Maybe Text)
    , _gMessageDisplayFont :: !(Maybe Text)
    , _gIncludeCustomFooter :: !(Maybe Text)
    , _gFavoriteRepliesOnTop :: !(Maybe Text)
    , _gCustomReplyTo :: !(Maybe Text)
    , _gWhoCanAddReferences :: !(Maybe Text)
    , _gWhoCanContactOwner :: !(Maybe Text)
    , _gWhoCanAdd :: !(Maybe Text)
    , _gWhoCanInvite :: !(Maybe Text)
    , _gWhoCanLeaveGroup :: !(Maybe Text)
    , _gWhoCanApproveMembers :: !(Maybe Text)
    , _gWhoCanModifyTagsAndCategories :: !(Maybe Text)
    , _gAllowGoogleCommunication :: !(Maybe Text)
    , _gWhoCanMoveTopicsIn :: !(Maybe Text)
    , _gWhoCanMarkNoResponseNeeded :: !(Maybe Text)
    , _gCustomFooterText :: !(Maybe Text)
    , _gWhoCanDeleteAnyPost :: !(Maybe Text)
    , _gWhoCanBanUsers :: !(Maybe Text)
    , _gWhoCanApproveMessages :: !(Maybe Text)
    , _gWhoCanMarkDuplicate :: !(Maybe Text)
    , _gEnableCollaborativeInbox :: !(Maybe Text)
    , _gPrimaryLanguage :: !(Maybe Text)
    , _gDescription :: !(Maybe Text)
    , _gDefaultMessageDenyNotificationText :: !(Maybe Text)
    , _gWhoCanMarkFavoriteReplyOnOwnTopic :: !(Maybe Text)
    , _gAllowWebPosting :: !(Maybe Text)
    , _gWhoCanMoveTopicsOut :: !(Maybe Text)
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
-- * 'gDefaultSender'
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
    , _gDefaultSender = Nothing
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


-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can hide posts by reporting them as abuse. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanHideAbuse :: Lens' Groups (Maybe Text)
gWhoCanHideAbuse
  = lens _gWhoCanHideAbuse
      (\ s a -> s{_gWhoCanHideAbuse = a})

-- | The group\'s email address. This property can be updated using the
-- Directory API. Note: Only a group owner can change a group\'s email
-- address. A group manager can\'t do this. When you change your group\'s
-- address using the Directory API or the control panel, you are changing
-- the address your subscribers use to send email and the web address
-- people use to access your group. People can\'t reach your group by
-- visiting the old address.
gEmail :: Lens' Groups (Maybe Text)
gEmail = lens _gEmail (\ s a -> s{_gEmail = a})

-- | Allows a member to be notified if the member\'s message to the group is
-- denied by the group owner. Possible values are: - true: When a message
-- is rejected, send the deny message notification to the message author.
-- The defaultMessageDenyNotificationText property is dependent on the
-- sendMessageDenyNotification property being true. - false: When a message
-- is rejected, no notification is sent.
gSendMessageDenyNotification :: Lens' Groups (Maybe Text)
gSendMessageDenyNotification
  = lens _gSendMessageDenyNotification
      (\ s a -> s{_gSendMessageDenyNotification = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to enter free form tags for topics in a forum. Possible
-- values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY -
-- OWNERS_ONLY - NONE
gWhoCanEnterFreeFormTags :: Lens' Groups (Maybe Text)
gWhoCanEnterFreeFormTags
  = lens _gWhoCanEnterFreeFormTags
      (\ s a -> s{_gWhoCanEnterFreeFormTags = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to assign topics in a forum to another user. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY -
-- NONE
gWhoCanAssignTopics :: Lens' Groups (Maybe Text)
gWhoCanAssignTopics
  = lens _gWhoCanAssignTopics
      (\ s a -> s{_gWhoCanAssignTopics = a})

-- | Permissions to post messages. Possible values are: - NONE_CAN_POST: The
-- group is disabled and archived. No one can post a message to this group.
-- - When archiveOnly is false, updating whoCanPostMessage to
-- NONE_CAN_POST, results in an error. - If archiveOnly is reverted from
-- true to false, whoCanPostMessages is set to ALL_MANAGERS_CAN_POST. -
-- ALL_MANAGERS_CAN_POST: Managers, including group owners, can post
-- messages. - ALL_MEMBERS_CAN_POST: Any group member can post a message. -
-- ALL_OWNERS_CAN_POST: Only group owners can post a message. -
-- ALL_IN_DOMAIN_CAN_POST: Anyone in the account can post a message. -
-- ANYONE_CAN_POST: Any Internet user who outside your account can access
-- your Google Groups service and post a message. Note: When
-- whoCanPostMessage is set to ANYONE_CAN_POST, we recommend the
-- messageModerationLevel be set to MODERATE_NON_MEMBERS to protect the
-- group from possible spam.
gWhoCanPostMessage :: Lens' Groups (Maybe Text)
gWhoCanPostMessage
  = lens _gWhoCanPostMessage
      (\ s a -> s{_gWhoCanPostMessage = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can delete topics. Possible values are: - ALL_MEMBERS -
-- OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanDeleteTopics :: Lens' Groups (Maybe Text)
gWhoCanDeleteTopics
  = lens _gWhoCanDeleteTopics
      (\ s a -> s{_gWhoCanDeleteTopics = a})

-- | Default sender for members who can post messages as the group. Possible
-- values are: - \`DEFAULT_SELF\`: By default messages will be sent from
-- the user - \`GROUP\`: By default messages will be sent from the group
gDefaultSender :: Lens' Groups (Maybe Text)
gDefaultSender
  = lens _gDefaultSender
      (\ s a -> s{_gDefaultSender = a})

-- | Identifies whether members external to your organization can join the
-- group. Possible values are: - true: G Suite users external to your
-- organization can become members of this group. - false: Users not
-- belonging to the organization are not allowed to become members of this
-- group.
gAllowExternalMembers :: Lens' Groups (Maybe Text)
gAllowExternalMembers
  = lens _gAllowExternalMembers
      (\ s a -> s{_gAllowExternalMembers = a})

-- | Deprecated. This is merged into the new whoCanModerateMembers setting.
-- Specifies who can change group members\' roles. Possible values are: -
-- ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanModifyMembers :: Lens' Groups (Maybe Text)
gWhoCanModifyMembers
  = lens _gWhoCanModifyMembers
      (\ s a -> s{_gWhoCanModifyMembers = a})

-- | Specifies who can moderate metadata. Possible values are: - ALL_MEMBERS
-- - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY - NONE
gWhoCanAssistContent :: Lens' Groups (Maybe Text)
gWhoCanAssistContent
  = lens _gWhoCanAssistContent
      (\ s a -> s{_gWhoCanAssistContent = a})

-- | Deprecated. This is merged into the new whoCanDiscoverGroup setting.
-- Allows the group to be visible in the Groups Directory. Possible values
-- are: - true: All groups in the account are listed in the Groups
-- directory. - false: All groups in the account are not listed in the
-- directory.
gShowInGroupDirectory :: Lens' Groups (Maybe Text)
gShowInGroupDirectory
  = lens _gShowInGroupDirectory
      (\ s a -> s{_gShowInGroupDirectory = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to unmark any post from a favorite reply. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY -
-- NONE
gWhoCanUnmarkFavoriteReplyOnAnyTopic :: Lens' Groups (Maybe Text)
gWhoCanUnmarkFavoriteReplyOnAnyTopic
  = lens _gWhoCanUnmarkFavoriteReplyOnAnyTopic
      (\ s a ->
         s{_gWhoCanUnmarkFavoriteReplyOnAnyTopic = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to take topics in a forum. Possible values are: - ALL_MEMBERS
-- - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY - NONE
gWhoCanTakeTopics :: Lens' Groups (Maybe Text)
gWhoCanTakeTopics
  = lens _gWhoCanTakeTopics
      (\ s a -> s{_gWhoCanTakeTopics = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can prevent users from posting replies to topics. Possible
-- values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanLockTopics :: Lens' Groups (Maybe Text)
gWhoCanLockTopics
  = lens _gWhoCanLockTopics
      (\ s a -> s{_gWhoCanLockTopics = a})

-- | Specifies moderation levels for messages detected as spam. Possible
-- values are: - ALLOW: Post the message to the group. - MODERATE: Send the
-- message to the moderation queue. This is the default. -
-- SILENTLY_MODERATE: Send the message to the moderation queue, but do not
-- send notification to moderators. - REJECT: Immediately reject the
-- message.
gSpamModerationLevel :: Lens' Groups (Maybe Text)
gSpamModerationLevel
  = lens _gSpamModerationLevel
      (\ s a -> s{_gSpamModerationLevel = a})

-- | The type of the resource. It is always groupsSettings#groups.
gKind :: Lens' Groups Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | Specifies the set of users for whom this group is discoverable. Possible
-- values are: - ANYONE_CAN_DISCOVER - ALL_IN_DOMAIN_CAN_DISCOVER -
-- ALL_MEMBERS_CAN_DISCOVER
gWhoCanDiscoverGroup :: Lens' Groups (Maybe Text)
gWhoCanDiscoverGroup
  = lens _gWhoCanDiscoverGroup
      (\ s a -> s{_gWhoCanDiscoverGroup = a})

-- | Permissions to view membership. Possible values are: -
-- ALL_IN_DOMAIN_CAN_VIEW: Anyone in the account can view the group members
-- list. If a group already has external members, those members can still
-- send email to this group. - ALL_MEMBERS_CAN_VIEW: The group members can
-- view the group members list. - ALL_MANAGERS_CAN_VIEW: The group managers
-- can view group members list.
gWhoCanViewMembership :: Lens' Groups (Maybe Text)
gWhoCanViewMembership
  = lens _gWhoCanViewMembership
      (\ s a -> s{_gWhoCanViewMembership = a})

-- | Enables members to post messages as the group. Possible values are: -
-- true: Group member can post messages using the group\'s email address
-- instead of their own email address. Message appear to originate from the
-- group itself. Note: When true, any message moderation settings on
-- individual users or new members do not apply to posts made on behalf of
-- the group. - false: Members can not post in behalf of the group\'s email
-- address.
gMembersCanPostAsTheGroup :: Lens' Groups (Maybe Text)
gMembersCanPostAsTheGroup
  = lens _gMembersCanPostAsTheGroup
      (\ s a -> s{_gMembersCanPostAsTheGroup = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can make topics appear at the top of the topic list.
-- Possible values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY -
-- NONE
gWhoCanMakeTopicsSticky :: Lens' Groups (Maybe Text)
gWhoCanMakeTopicsSticky
  = lens _gWhoCanMakeTopicsSticky
      (\ s a -> s{_gWhoCanMakeTopicsSticky = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can post announcements, a special topic type. Possible
-- values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanPostAnnouncements :: Lens' Groups (Maybe Text)
gWhoCanPostAnnouncements
  = lens _gWhoCanPostAnnouncements
      (\ s a -> s{_gWhoCanPostAnnouncements = a})

-- | Permissions to view group messages. Possible values are: -
-- ANYONE_CAN_VIEW: Any Internet user can view the group\'s messages. -
-- ALL_IN_DOMAIN_CAN_VIEW: Anyone in your account can view this group\'s
-- messages. - ALL_MEMBERS_CAN_VIEW: All group members can view the
-- group\'s messages. - ALL_MANAGERS_CAN_VIEW: Any group manager can view
-- this group\'s messages.
gWhoCanViewGroup :: Lens' Groups (Maybe Text)
gWhoCanViewGroup
  = lens _gWhoCanViewGroup
      (\ s a -> s{_gWhoCanViewGroup = a})

-- | Permission to join group. Possible values are: - ANYONE_CAN_JOIN: Anyone
-- in the account domain can join. This includes accounts with multiple
-- domains. - ALL_IN_DOMAIN_CAN_JOIN: Any Internet user who is outside your
-- domain can access your Google Groups service and view the list of groups
-- in your Groups directory. Warning: Group owners can add external
-- addresses, outside of the domain to their groups. They can also allow
-- people outside your domain to join their groups. If you later disable
-- this option, any external addresses already added to users\' groups
-- remain in those groups. - INVITED_CAN_JOIN: Candidates for membership
-- can be invited to join. - CAN_REQUEST_TO_JOIN: Non members can request
-- an invitation to join.
gWhoCanJoin :: Lens' Groups (Maybe Text)
gWhoCanJoin
  = lens _gWhoCanJoin (\ s a -> s{_gWhoCanJoin = a})

-- | Specifies who can manage members. Possible values are: - ALL_MEMBERS -
-- OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanModerateMembers :: Lens' Groups (Maybe Text)
gWhoCanModerateMembers
  = lens _gWhoCanModerateMembers
      (\ s a -> s{_gWhoCanModerateMembers = a})

-- | Allows the group to be archived only. Possible values are: - true: Group
-- is archived and the group is inactive. New messages to this group are
-- rejected. The older archived messages are browseable and searchable. -
-- If true, the whoCanPostMessage property is set to NONE_CAN_POST. - If
-- reverted from true to false, whoCanPostMessages is set to
-- ALL_MANAGERS_CAN_POST. - false: The group is active and can receive
-- messages. - When false, updating whoCanPostMessage to NONE_CAN_POST,
-- results in an error.
gArchiveOnly :: Lens' Groups (Maybe Text)
gArchiveOnly
  = lens _gArchiveOnly (\ s a -> s{_gArchiveOnly = a})

-- | Deprecated. The maximum size of a message is 25Mb.
gMaxMessageBytes :: Lens' Groups (Maybe Int32)
gMaxMessageBytes
  = lens _gMaxMessageBytes
      (\ s a -> s{_gMaxMessageBytes = a})
      . mapping _Coerce

-- | Specifies who receives the default reply. Possible values are: -
-- REPLY_TO_CUSTOM: For replies to messages, use the group\'s custom email
-- address. When the group\'s ReplyTo property is set to REPLY_TO_CUSTOM,
-- the customReplyTo property holds the custom email address used when
-- replying to a message. If the group\'s ReplyTo property is set to
-- REPLY_TO_CUSTOM, the customReplyTo property must have a value. Otherwise
-- an error is returned. - REPLY_TO_SENDER: The reply sent to author of
-- message. - REPLY_TO_LIST: This reply message is sent to the group. -
-- REPLY_TO_OWNER: The reply is sent to the owner(s) of the group. This
-- does not include the group\'s managers. - REPLY_TO_IGNORE: Group users
-- individually decide where the message reply is sent. -
-- REPLY_TO_MANAGERS: This reply message is sent to the group\'s managers,
-- which includes all managers and the group owner.
gReplyTo :: Lens' Groups (Maybe Text)
gReplyTo = lens _gReplyTo (\ s a -> s{_gReplyTo = a})

-- | Moderation level of incoming messages. Possible values are: -
-- MODERATE_ALL_MESSAGES: All messages are sent to the group owner\'s email
-- address for approval. If approved, the message is sent to the group. -
-- MODERATE_NON_MEMBERS: All messages from non group members are sent to
-- the group owner\'s email address for approval. If approved, the message
-- is sent to the group. - MODERATE_NEW_MEMBERS: All messages from new
-- members are sent to the group owner\'s email address for approval. If
-- approved, the message is sent to the group. - MODERATE_NONE: No
-- moderator approval is required. Messages are delivered directly to the
-- group. Note: When the whoCanPostMessage is set to ANYONE_CAN_POST, we
-- recommend the messageModerationLevel be set to MODERATE_NON_MEMBERS to
-- protect the group from possible spam. When memberCanPostAsTheGroup is
-- true, any message moderation settings on individual users or new members
-- will not apply to posts made on behalf of the group.
gMessageModerationLevel :: Lens' Groups (Maybe Text)
gMessageModerationLevel
  = lens _gMessageModerationLevel
      (\ s a -> s{_gMessageModerationLevel = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to mark any other user\'s post as a favorite reply. Possible
-- values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY -
-- OWNERS_ONLY - NONE
gWhoCanMarkFavoriteReplyOnAnyTopic :: Lens' Groups (Maybe Text)
gWhoCanMarkFavoriteReplyOnAnyTopic
  = lens _gWhoCanMarkFavoriteReplyOnAnyTopic
      (\ s a -> s{_gWhoCanMarkFavoriteReplyOnAnyTopic = a})

-- | Enables the group to be included in the Global Address List. For more
-- information, see the help center. Possible values are: - true: Group is
-- included in the Global Address List. - false: Group is not included in
-- the Global Address List.
gIncludeInGlobalAddressList :: Lens' Groups (Maybe Text)
gIncludeInGlobalAddressList
  = lens _gIncludeInGlobalAddressList
      (\ s a -> s{_gIncludeInGlobalAddressList = a})

-- | Allows the Group contents to be archived. Possible values are: - true:
-- Archive messages sent to the group. - false: Do not keep an archive of
-- messages sent to this group. If false, previously archived messages
-- remain in the archive.
gIsArchived :: Lens' Groups (Maybe Text)
gIsArchived
  = lens _gIsArchived (\ s a -> s{_gIsArchived = a})

-- | Specifies who can moderate content. Possible values are: - ALL_MEMBERS -
-- OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanModerateContent :: Lens' Groups (Maybe Text)
gWhoCanModerateContent
  = lens _gWhoCanModerateContent
      (\ s a -> s{_gWhoCanModerateContent = a})

-- | Specifies whether the group has a custom role that\'s included in one of
-- the settings being merged. This field is read-only and update\/patch
-- requests to it are ignored. Possible values are: - true - false
gCustomRolesEnabledForSettingsToBeMerged :: Lens' Groups (Maybe Text)
gCustomRolesEnabledForSettingsToBeMerged
  = lens _gCustomRolesEnabledForSettingsToBeMerged
      (\ s a ->
         s{_gCustomRolesEnabledForSettingsToBeMerged = a})

-- | Name of the group, which has a maximum size of 75 characters.
gName :: Lens' Groups (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to unassign any topic in a forum. Possible values are: -
-- ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY - NONE
gWhoCanUnassignTopic :: Lens' Groups (Maybe Text)
gWhoCanUnassignTopic
  = lens _gWhoCanUnassignTopic
      (\ s a -> s{_gWhoCanUnassignTopic = a})

-- | Deprecated. The default message display font always has a value of
-- \"DEFAULT_FONT\".
gMessageDisplayFont :: Lens' Groups (Maybe Text)
gMessageDisplayFont
  = lens _gMessageDisplayFont
      (\ s a -> s{_gMessageDisplayFont = a})

-- | Whether to include custom footer. Possible values are: - true - false
gIncludeCustomFooter :: Lens' Groups (Maybe Text)
gIncludeCustomFooter
  = lens _gIncludeCustomFooter
      (\ s a -> s{_gIncludeCustomFooter = a})

-- | Indicates if favorite replies should be displayed above other replies. -
-- true: Favorite replies will be displayed above other replies. - false:
-- Favorite replies will not be displayed above other replies.
gFavoriteRepliesOnTop :: Lens' Groups (Maybe Text)
gFavoriteRepliesOnTop
  = lens _gFavoriteRepliesOnTop
      (\ s a -> s{_gFavoriteRepliesOnTop = a})

-- | An email address used when replying to a message if the replyTo property
-- is set to REPLY_TO_CUSTOM. This address is defined by an account
-- administrator. - When the group\'s ReplyTo property is set to
-- REPLY_TO_CUSTOM, the customReplyTo property holds a custom email address
-- used when replying to a message. - If the group\'s ReplyTo property is
-- set to REPLY_TO_CUSTOM, the customReplyTo property must have a text
-- value or an error is returned.
gCustomReplyTo :: Lens' Groups (Maybe Text)
gCustomReplyTo
  = lens _gCustomReplyTo
      (\ s a -> s{_gCustomReplyTo = a})

-- | Deprecated. This functionality is no longer supported in the Google
-- Groups UI. The value is always \"NONE\".
gWhoCanAddReferences :: Lens' Groups (Maybe Text)
gWhoCanAddReferences
  = lens _gWhoCanAddReferences
      (\ s a -> s{_gWhoCanAddReferences = a})

-- | Permission to contact owner of the group via web UI. Possible values
-- are: - ALL_IN_DOMAIN_CAN_CONTACT - ALL_MANAGERS_CAN_CONTACT -
-- ALL_MEMBERS_CAN_CONTACT - ANYONE_CAN_CONTACT - ALL_OWNERS_CAN_CONTACT
gWhoCanContactOwner :: Lens' Groups (Maybe Text)
gWhoCanContactOwner
  = lens _gWhoCanContactOwner
      (\ s a -> s{_gWhoCanContactOwner = a})

-- | Deprecated. This is merged into the new whoCanModerateMembers setting.
-- Permissions to add members. Possible values are: - ALL_MEMBERS_CAN_ADD:
-- Managers and members can directly add new members. -
-- ALL_MANAGERS_CAN_ADD: Only managers can directly add new members. this
-- includes the group\'s owner. - ALL_OWNERS_CAN_ADD: Only owners can
-- directly add new members. - NONE_CAN_ADD: No one can directly add new
-- members.
gWhoCanAdd :: Lens' Groups (Maybe Text)
gWhoCanAdd
  = lens _gWhoCanAdd (\ s a -> s{_gWhoCanAdd = a})

-- | Deprecated. This is merged into the new whoCanModerateMembers setting.
-- Permissions to invite new members. Possible values are: -
-- ALL_MEMBERS_CAN_INVITE: Managers and members can invite a new member
-- candidate. - ALL_MANAGERS_CAN_INVITE: Only managers can invite a new
-- member. This includes the group\'s owner. - ALL_OWNERS_CAN_INVITE: Only
-- owners can invite a new member. - NONE_CAN_INVITE: No one can invite a
-- new member candidate.
gWhoCanInvite :: Lens' Groups (Maybe Text)
gWhoCanInvite
  = lens _gWhoCanInvite
      (\ s a -> s{_gWhoCanInvite = a})

-- | Permission to leave the group. Possible values are: -
-- ALL_MANAGERS_CAN_LEAVE - ALL_MEMBERS_CAN_LEAVE - NONE_CAN_LEAVE
gWhoCanLeaveGroup :: Lens' Groups (Maybe Text)
gWhoCanLeaveGroup
  = lens _gWhoCanLeaveGroup
      (\ s a -> s{_gWhoCanLeaveGroup = a})

-- | Specifies who can approve members who ask to join groups. This
-- permission will be deprecated once it is merged into the new
-- whoCanModerateMembers setting. Possible values are: -
-- ALL_MEMBERS_CAN_APPROVE - ALL_MANAGERS_CAN_APPROVE -
-- ALL_OWNERS_CAN_APPROVE - NONE_CAN_APPROVE
gWhoCanApproveMembers :: Lens' Groups (Maybe Text)
gWhoCanApproveMembers
  = lens _gWhoCanApproveMembers
      (\ s a -> s{_gWhoCanApproveMembers = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to change tags and categories. Possible values are: -
-- ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY - NONE
gWhoCanModifyTagsAndCategories :: Lens' Groups (Maybe Text)
gWhoCanModifyTagsAndCategories
  = lens _gWhoCanModifyTagsAndCategories
      (\ s a -> s{_gWhoCanModifyTagsAndCategories = a})

-- | Deprecated. Allows Google to contact administrator of the group. - true:
-- Allow Google to contact managers of this group. Occasionally Google may
-- send updates on the latest features, ask for input on new features, or
-- ask for permission to highlight your group. - false: Google can not
-- contact managers of this group.
gAllowGoogleCommunication :: Lens' Groups (Maybe Text)
gAllowGoogleCommunication
  = lens _gAllowGoogleCommunication
      (\ s a -> s{_gAllowGoogleCommunication = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can move topics into the group or forum. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanMoveTopicsIn :: Lens' Groups (Maybe Text)
gWhoCanMoveTopicsIn
  = lens _gWhoCanMoveTopicsIn
      (\ s a -> s{_gWhoCanMoveTopicsIn = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to mark a topic as not needing a response. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY - OWNERS_ONLY -
-- NONE
gWhoCanMarkNoResponseNeeded :: Lens' Groups (Maybe Text)
gWhoCanMarkNoResponseNeeded
  = lens _gWhoCanMarkNoResponseNeeded
      (\ s a -> s{_gWhoCanMarkNoResponseNeeded = a})

-- | Set the content of custom footer text. The maximum number of characters
-- is 1,000.
gCustomFooterText :: Lens' Groups (Maybe Text)
gCustomFooterText
  = lens _gCustomFooterText
      (\ s a -> s{_gCustomFooterText = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can delete replies to topics. (Authors can always delete
-- their own posts). Possible values are: - ALL_MEMBERS -
-- OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
gWhoCanDeleteAnyPost :: Lens' Groups (Maybe Text)
gWhoCanDeleteAnyPost
  = lens _gWhoCanDeleteAnyPost
      (\ s a -> s{_gWhoCanDeleteAnyPost = a})

-- | Specifies who can deny membership to users. This permission will be
-- deprecated once it is merged into the new whoCanModerateMembers setting.
-- Possible values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY -
-- NONE
gWhoCanBanUsers :: Lens' Groups (Maybe Text)
gWhoCanBanUsers
  = lens _gWhoCanBanUsers
      (\ s a -> s{_gWhoCanBanUsers = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can approve pending messages in the moderation queue.
-- Possible values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY -
-- NONE
gWhoCanApproveMessages :: Lens' Groups (Maybe Text)
gWhoCanApproveMessages
  = lens _gWhoCanApproveMessages
      (\ s a -> s{_gWhoCanApproveMessages = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to mark a topic as a duplicate of another topic. Possible
-- values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY -
-- OWNERS_ONLY - NONE
gWhoCanMarkDuplicate :: Lens' Groups (Maybe Text)
gWhoCanMarkDuplicate
  = lens _gWhoCanMarkDuplicate
      (\ s a -> s{_gWhoCanMarkDuplicate = a})

-- | Specifies whether a collaborative inbox will remain turned on for the
-- group. Possible values are: - true - false
gEnableCollaborativeInbox :: Lens' Groups (Maybe Text)
gEnableCollaborativeInbox
  = lens _gEnableCollaborativeInbox
      (\ s a -> s{_gEnableCollaborativeInbox = a})

-- | The primary language for group. For a group\'s primary language use the
-- language tags from the G Suite languages found at G Suite Email Settings
-- API Email Language Tags.
gPrimaryLanguage :: Lens' Groups (Maybe Text)
gPrimaryLanguage
  = lens _gPrimaryLanguage
      (\ s a -> s{_gPrimaryLanguage = a})

-- | Description of the group. This property value may be an empty string if
-- no group description has been entered. If entered, the maximum group
-- description is no more than 300 characters.
gDescription :: Lens' Groups (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | When a message is rejected, this is text for the rejection notification
-- sent to the message\'s author. By default, this property is empty and
-- has no value in the API\'s response body. The maximum notification text
-- size is 10,000 characters. Note: Requires sendMessageDenyNotification
-- property to be true.
gDefaultMessageDenyNotificationText :: Lens' Groups (Maybe Text)
gDefaultMessageDenyNotificationText
  = lens _gDefaultMessageDenyNotificationText
      (\ s a ->
         s{_gDefaultMessageDenyNotificationText = a})

-- | Deprecated. This is merged into the new whoCanAssistContent setting.
-- Permission to mark a post for a topic they started as a favorite reply.
-- Possible values are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - MANAGERS_ONLY
-- - OWNERS_ONLY - NONE
gWhoCanMarkFavoriteReplyOnOwnTopic :: Lens' Groups (Maybe Text)
gWhoCanMarkFavoriteReplyOnOwnTopic
  = lens _gWhoCanMarkFavoriteReplyOnOwnTopic
      (\ s a -> s{_gWhoCanMarkFavoriteReplyOnOwnTopic = a})

-- | Allows posting from web. Possible values are: - true: Allows any member
-- to post to the group forum. - false: Members only use Gmail to
-- communicate with the group.
gAllowWebPosting :: Lens' Groups (Maybe Text)
gAllowWebPosting
  = lens _gAllowWebPosting
      (\ s a -> s{_gAllowWebPosting = a})

-- | Deprecated. This is merged into the new whoCanModerateContent setting.
-- Specifies who can move topics out of the group or forum. Possible values
-- are: - ALL_MEMBERS - OWNERS_AND_MANAGERS - OWNERS_ONLY - NONE
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
                     <*> (o .:? "default_sender")
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
                  ("default_sender" .=) <$> _gDefaultSender,
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
