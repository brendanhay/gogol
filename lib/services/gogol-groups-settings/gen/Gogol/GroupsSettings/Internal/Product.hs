{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GroupsSettings.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.GroupsSettings.Internal.Product
  ( -- * Groups
    Groups (..),
    newGroups,
  )
where

import Gogol.GroupsSettings.Internal.Sum
import qualified Gogol.Prelude as Core

-- | JSON template for Group resource
--
-- /See:/ 'newGroups' smart constructor.
data Groups = Groups
  { -- | Identifies whether members external to your organization can join the group. Possible values are:
    -- - true: G Suite users external to your organization can become members of this group. - false: Users not belonging to the organization are not allowed to become members of this group.
    allowExternalMembers :: (Core.Maybe Core.Text),
    -- | Deprecated. Allows Google to contact administrator of the group.
    -- - true: Allow Google to contact managers of this group. Occasionally Google may send updates on the latest features, ask for input on new features, or ask for permission to highlight your group. - false: Google can not contact managers of this group.
    allowGoogleCommunication :: (Core.Maybe Core.Text),
    -- | Allows posting from web. Possible values are:
    -- - true: Allows any member to post to the group forum. - false: Members only use Gmail to communicate with the group.
    allowWebPosting :: (Core.Maybe Core.Text),
    -- | Allows the group to be archived only. Possible values are:
    -- - true: Group is archived and the group is inactive. New messages to this group are rejected. The older archived messages are browseable and searchable.
    -- - If true, the whoCanPostMessage property is set to NONE/CAN/POST.
    -- - If reverted from true to false, whoCanPostMessages is set to ALL/MANAGERS/CAN/POST.
    -- - false: The group is active and can receive messages.
    -- - When false, updating whoCanPostMessage to NONE/CAN_POST, results in an error.
    archiveOnly :: (Core.Maybe Core.Text),
    -- | Set the content of custom footer text. The maximum number of characters is 1,000.
    customFooterText :: (Core.Maybe Core.Text),
    -- | An email address used when replying to a message if the replyTo property is set to REPLY/TO/CUSTOM. This address is defined by an account administrator.
    -- - When the group\'s ReplyTo property is set to REPLY/TO/CUSTOM, the customReplyTo property holds a custom email address used when replying to a message. - If the group\'s ReplyTo property is set to REPLY/TO/CUSTOM, the customReplyTo property must have a text value or an error is returned.
    customReplyTo :: (Core.Maybe Core.Text),
    -- | Specifies whether the group has a custom role that\'s included in one of the settings being merged. This field is read-only and update\/patch requests to it are ignored. Possible values are:
    -- - true - false
    customRolesEnabledForSettingsToBeMerged :: (Core.Maybe Core.Text),
    -- | When a message is rejected, this is text for the rejection notification sent to the message\'s author. By default, this property is empty and has no value in the API\'s response body. The maximum notification text size is 10,000 characters. Note: Requires sendMessageDenyNotification property to be true.
    defaultMessageDenyNotificationText :: (Core.Maybe Core.Text),
    -- | Default sender for members who can post messages as the group. Possible values are: - @DEFAULT_SELF@: By default messages will be sent from the user - @GROUP@: By default messages will be sent from the group
    defaultSender :: (Core.Maybe Core.Text),
    -- | Description of the group. This property value may be an empty string if no group description has been entered. If entered, the maximum group description is no more than 300 characters.
    description :: (Core.Maybe Core.Text),
    -- | The group\'s email address. This property can be updated using the Directory API. Note: Only a group owner can change a group\'s email address. A group manager can\'t do this. When you change your group\'s address using the Directory API or the control panel, you are changing the address your subscribers use to send email and the web address people use to access your group. People can\'t reach your group by visiting the old address.
    email :: (Core.Maybe Core.Text),
    -- | Specifies whether a collaborative inbox will remain turned on for the group. Possible values are:
    -- - true - false
    enableCollaborativeInbox :: (Core.Maybe Core.Text),
    -- | Indicates if favorite replies should be displayed above other replies.
    -- - true: Favorite replies will be displayed above other replies. - false: Favorite replies will not be displayed above other replies.
    favoriteRepliesOnTop :: (Core.Maybe Core.Text),
    -- | Whether to include custom footer. Possible values are:
    -- - true - false
    includeCustomFooter :: (Core.Maybe Core.Text),
    -- | Enables the group to be included in the Global Address List. For more information, see the help center. Possible values are:
    -- - true: Group is included in the Global Address List. - false: Group is not included in the Global Address List.
    includeInGlobalAddressList :: (Core.Maybe Core.Text),
    -- | Allows the Group contents to be archived. Possible values are:
    -- - true: Archive messages sent to the group. - false: Do not keep an archive of messages sent to this group. If false, previously archived messages remain in the archive.
    isArchived :: (Core.Maybe Core.Text),
    -- | The type of the resource. It is always groupsSettings#groups.
    kind :: Core.Text,
    -- | Deprecated. The maximum size of a message is 25Mb.
    maxMessageBytes :: (Core.Maybe Core.Int32),
    -- | Enables members to post messages as the group. Possible values are:
    -- - true: Group member can post messages using the group\'s email address instead of their own email address. Message appear to originate from the group itself. Note: When true, any message moderation settings on individual users or new members do not apply to posts made on behalf of the group. - false: Members can not post in behalf of the group\'s email address.
    membersCanPostAsTheGroup :: (Core.Maybe Core.Text),
    -- | Deprecated. The default message display font always has a value of \"DEFAULT_FONT\".
    messageDisplayFont :: (Core.Maybe Core.Text),
    -- | Moderation level of incoming messages. Possible values are:
    -- - MODERATE/ALL/MESSAGES: All messages are sent to the group owner\'s email address for approval. If approved, the message is sent to the group. - MODERATE/NON/MEMBERS: All messages from non group members are sent to the group owner\'s email address for approval. If approved, the message is sent to the group. - MODERATE/NEW/MEMBERS: All messages from new members are sent to the group owner\'s email address for approval. If approved, the message is sent to the group. - MODERATE/NONE: No moderator approval is required. Messages are delivered directly to the group. Note: When the whoCanPostMessage is set to ANYONE/CAN/POST, we recommend the messageModerationLevel be set to MODERATE/NON_MEMBERS to protect the group from possible spam. When memberCanPostAsTheGroup is true, any message moderation settings on individual users or new members will not apply to posts made on behalf of the group.
    messageModerationLevel :: (Core.Maybe Core.Text),
    -- | Name of the group, which has a maximum size of 75 characters.
    name :: (Core.Maybe Core.Text),
    -- | The primary language for group. For a group\'s primary language use the language tags from the G Suite languages found at G Suite Email Settings API Email Language Tags.
    primaryLanguage :: (Core.Maybe Core.Text),
    -- | Specifies who receives the default reply. Possible values are:
    -- - REPLY/TO/CUSTOM: For replies to messages, use the group\'s custom email address. When the group\'s ReplyTo property is set to REPLY/TO/CUSTOM, the customReplyTo property holds the custom email address used when replying to a message. If the group\'s ReplyTo property is set to REPLY/TO/CUSTOM, the customReplyTo property must have a value. Otherwise an error is returned.
    --
    -- -   REPLY/TO/SENDER: The reply sent to author of message.
    -- -   REPLY/TO/LIST: This reply message is sent to the group.
    -- -   REPLY/TO/OWNER: The reply is sent to the owner(s) of the group. This does not include the group\'s managers.
    -- -   REPLY/TO/IGNORE: Group users individually decide where the message reply is sent.
    -- -   REPLY/TO/MANAGERS: This reply message is sent to the group\'s managers, which includes all managers and the group owner.
    replyTo :: (Core.Maybe Core.Text),
    -- | Allows a member to be notified if the member\'s message to the group is denied by the group owner. Possible values are:
    -- - true: When a message is rejected, send the deny message notification to the message author. The defaultMessageDenyNotificationText property is dependent on the sendMessageDenyNotification property being true.
    --
    -- -   false: When a message is rejected, no notification is sent.
    sendMessageDenyNotification :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanDiscoverGroup setting. Allows the group to be visible in the Groups Directory. Possible values are:
    -- - true: All groups in the account are listed in the Groups directory. - false: All groups in the account are not listed in the directory.
    showInGroupDirectory :: (Core.Maybe Core.Text),
    -- | Specifies moderation levels for messages detected as spam. Possible values are:
    -- - ALLOW: Post the message to the group. - MODERATE: Send the message to the moderation queue. This is the default. - SILENTLY_MODERATE: Send the message to the moderation queue, but do not send notification to moderators. - REJECT: Immediately reject the message.
    spamModerationLevel :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to add members. Possible values are:
    -- - ALL/MEMBERS/CAN/ADD: Managers and members can directly add new members. - ALL/MANAGERS/CAN/ADD: Only managers can directly add new members. this includes the group\'s owner. - ALL/OWNERS/CAN/ADD: Only owners can directly add new members. - NONE/CAN_ADD: No one can directly add new members.
    whoCanAdd :: (Core.Maybe Core.Text),
    -- | Deprecated. This functionality is no longer supported in the Google Groups UI. The value is always \"NONE\".
    whoCanAddReferences :: (Core.Maybe Core.Text),
    -- | Specifies who can approve members who ask to join groups. This permission will be deprecated once it is merged into the new whoCanModerateMembers setting. Possible values are:
    -- - ALL/MEMBERS/CAN/APPROVE - ALL/MANAGERS/CAN/APPROVE - ALL/OWNERS/CAN/APPROVE - NONE/CAN_APPROVE
    whoCanApproveMembers :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can approve pending messages in the moderation queue. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanApproveMessages :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to assign topics in a forum to another user. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanAssignTopics :: (Core.Maybe Core.Text),
    -- | Specifies who can moderate metadata. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanAssistContent :: (Core.Maybe Core.Text),
    -- | Specifies who can deny membership to users. This permission will be deprecated once it is merged into the new whoCanModerateMembers setting. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanBanUsers :: (Core.Maybe Core.Text),
    -- | Permission to contact owner of the group via web UI. Possible values are:
    -- - ALL/IN/DOMAIN/CAN/CONTACT - ALL/MANAGERS/CAN/CONTACT - ALL/MEMBERS/CAN/CONTACT - ANYONE/CAN/CONTACT - ALL/OWNERS/CAN_CONTACT
    whoCanContactOwner :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete replies to topics. (Authors can always delete their own posts). Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanDeleteAnyPost :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete topics. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanDeleteTopics :: (Core.Maybe Core.Text),
    -- | Specifies the set of users for whom this group is discoverable. Possible values are:
    -- - ANYONE/CAN/DISCOVER - ALL/IN/DOMAIN/CAN/DISCOVER - ALL/MEMBERS/CAN_DISCOVER
    whoCanDiscoverGroup :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to enter free form tags for topics in a forum. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanEnterFreeFormTags :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can hide posts by reporting them as abuse. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanHideAbuse :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to invite new members. Possible values are:
    -- - ALL/MEMBERS/CAN/INVITE: Managers and members can invite a new member candidate. - ALL/MANAGERS/CAN/INVITE: Only managers can invite a new member. This includes the group\'s owner. - ALL/OWNERS/CAN/INVITE: Only owners can invite a new member. - NONE/CAN_INVITE: No one can invite a new member candidate.
    whoCanInvite :: (Core.Maybe Core.Text),
    -- | Permission to join group. Possible values are:
    -- - ANYONE/CAN/JOIN: Anyone in the account domain can join. This includes accounts with multiple domains. - ALL/IN/DOMAIN/CAN/JOIN: Any Internet user who is outside your domain can access your Google Groups service and view the list of groups in your Groups directory. Warning: Group owners can add external addresses, outside of the domain to their groups. They can also allow people outside your domain to join their groups. If you later disable this option, any external addresses already added to users\' groups remain in those groups. - INVITED/CAN/JOIN: Candidates for membership can be invited to join.
    -- - CAN/REQUEST/TO_JOIN: Non members can request an invitation to join.
    whoCanJoin :: (Core.Maybe Core.Text),
    -- | Permission to leave the group. Possible values are:
    -- - ALL/MANAGERS/CAN/LEAVE - ALL/MEMBERS/CAN/LEAVE - NONE/CAN/LEAVE
    whoCanLeaveGroup :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can prevent users from posting replies to topics. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanLockTopics :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can make topics appear at the top of the topic list. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanMakeTopicsSticky :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic as a duplicate of another topic. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanMarkDuplicate :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark any other user\'s post as a favorite reply. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanMarkFavoriteReplyOnAnyTopic :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a post for a topic they started as a favorite reply. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanMarkFavoriteReplyOnOwnTopic :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic as not needing a response. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanMarkNoResponseNeeded :: (Core.Maybe Core.Text),
    -- | Specifies who can moderate content. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanModerateContent :: (Core.Maybe Core.Text),
    -- | Specifies who can manage members. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanModerateMembers :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateMembers setting. Specifies who can change group members\' roles. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanModifyMembers :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to change tags and categories. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanModifyTagsAndCategories :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move topics into the group or forum. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanMoveTopicsIn :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move topics out of the group or forum. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanMoveTopicsOut :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can post announcements, a special topic type. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - OWNERS/ONLY - NONE
    whoCanPostAnnouncements :: (Core.Maybe Core.Text),
    -- | Permissions to post messages. Possible values are:
    -- - NONE/CAN/POST: The group is disabled and archived. No one can post a message to this group.
    -- - When archiveOnly is false, updating whoCanPostMessage to NONE/CAN/POST, results in an error. - If archiveOnly is reverted from true to false, whoCanPostMessages is set to ALL/MANAGERS/CAN/POST.
    -- - ALL/MANAGERS/CAN/POST: Managers, including group owners, can post messages. - ALL/MEMBERS/CAN/POST: Any group member can post a message. - ALL/OWNERS/CAN/POST: Only group owners can post a message. - ALL/IN/DOMAIN/CAN/POST: Anyone in the account can post a message.
    -- - ANYONE/CAN/POST: Any Internet user who outside your account can access your Google Groups service and post a message. Note: When whoCanPostMessage is set to ANYONE/CAN/POST, we recommend the messageModerationLevel be set to MODERATE/NON/MEMBERS to protect the group from possible spam.
    whoCanPostMessage :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to take topics in a forum. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanTakeTopics :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unassign any topic in a forum. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanUnassignTopic :: (Core.Maybe Core.Text),
    -- | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unmark any post from a favorite reply. Possible values are:
    -- - ALL/MEMBERS - OWNERS/AND/MANAGERS - MANAGERS/ONLY - OWNERS_ONLY - NONE
    whoCanUnmarkFavoriteReplyOnAnyTopic :: (Core.Maybe Core.Text),
    -- | Permissions to view group messages. Possible values are:
    -- - ANYONE/CAN/VIEW: Any Internet user can view the group\'s messages.
    -- - ALL/IN/DOMAIN/CAN/VIEW: Anyone in your account can view this group\'s messages. - ALL/MEMBERS/CAN/VIEW: All group members can view the group\'s messages. - ALL/MANAGERS/CAN/VIEW: Any group manager can view this group\'s messages.
    whoCanViewGroup :: (Core.Maybe Core.Text),
    -- | Permissions to view membership. Possible values are:
    -- - ALL/IN/DOMAIN/CAN/VIEW: Anyone in the account can view the group members list. If a group already has external members, those members can still send email to this group.
    --
    -- -   ALL/MEMBERS/CAN_VIEW: The group members can view the group members list.
    -- -   ALL/MANAGERS/CAN_VIEW: The group managers can view group members list.
    whoCanViewMembership :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
newGroups ::
  Groups
newGroups =
  Groups
    { allowExternalMembers = Core.Nothing,
      allowGoogleCommunication = Core.Nothing,
      allowWebPosting = Core.Nothing,
      archiveOnly = Core.Nothing,
      customFooterText = Core.Nothing,
      customReplyTo = Core.Nothing,
      customRolesEnabledForSettingsToBeMerged = Core.Nothing,
      defaultMessageDenyNotificationText = Core.Nothing,
      defaultSender = Core.Nothing,
      description = Core.Nothing,
      email = Core.Nothing,
      enableCollaborativeInbox = Core.Nothing,
      favoriteRepliesOnTop = Core.Nothing,
      includeCustomFooter = Core.Nothing,
      includeInGlobalAddressList = Core.Nothing,
      isArchived = Core.Nothing,
      kind = "groupsSettings#groups",
      maxMessageBytes = Core.Nothing,
      membersCanPostAsTheGroup = Core.Nothing,
      messageDisplayFont = Core.Nothing,
      messageModerationLevel = Core.Nothing,
      name = Core.Nothing,
      primaryLanguage = Core.Nothing,
      replyTo = Core.Nothing,
      sendMessageDenyNotification = Core.Nothing,
      showInGroupDirectory = Core.Nothing,
      spamModerationLevel = Core.Nothing,
      whoCanAdd = Core.Nothing,
      whoCanAddReferences = Core.Nothing,
      whoCanApproveMembers = Core.Nothing,
      whoCanApproveMessages = Core.Nothing,
      whoCanAssignTopics = Core.Nothing,
      whoCanAssistContent = Core.Nothing,
      whoCanBanUsers = Core.Nothing,
      whoCanContactOwner = Core.Nothing,
      whoCanDeleteAnyPost = Core.Nothing,
      whoCanDeleteTopics = Core.Nothing,
      whoCanDiscoverGroup = Core.Nothing,
      whoCanEnterFreeFormTags = Core.Nothing,
      whoCanHideAbuse = Core.Nothing,
      whoCanInvite = Core.Nothing,
      whoCanJoin = Core.Nothing,
      whoCanLeaveGroup = Core.Nothing,
      whoCanLockTopics = Core.Nothing,
      whoCanMakeTopicsSticky = Core.Nothing,
      whoCanMarkDuplicate = Core.Nothing,
      whoCanMarkFavoriteReplyOnAnyTopic = Core.Nothing,
      whoCanMarkFavoriteReplyOnOwnTopic = Core.Nothing,
      whoCanMarkNoResponseNeeded = Core.Nothing,
      whoCanModerateContent = Core.Nothing,
      whoCanModerateMembers = Core.Nothing,
      whoCanModifyMembers = Core.Nothing,
      whoCanModifyTagsAndCategories = Core.Nothing,
      whoCanMoveTopicsIn = Core.Nothing,
      whoCanMoveTopicsOut = Core.Nothing,
      whoCanPostAnnouncements = Core.Nothing,
      whoCanPostMessage = Core.Nothing,
      whoCanTakeTopics = Core.Nothing,
      whoCanUnassignTopic = Core.Nothing,
      whoCanUnmarkFavoriteReplyOnAnyTopic = Core.Nothing,
      whoCanViewGroup = Core.Nothing,
      whoCanViewMembership = Core.Nothing
    }

instance Core.FromJSON Groups where
  parseJSON =
    Core.withObject
      "Groups"
      ( \o ->
          Groups
            Core.<$> (o Core..:? "allowExternalMembers")
            Core.<*> (o Core..:? "allowGoogleCommunication")
            Core.<*> (o Core..:? "allowWebPosting")
            Core.<*> (o Core..:? "archiveOnly")
            Core.<*> (o Core..:? "customFooterText")
            Core.<*> (o Core..:? "customReplyTo")
            Core.<*> ( o
                         Core..:? "customRolesEnabledForSettingsToBeMerged"
                     )
            Core.<*> (o Core..:? "defaultMessageDenyNotificationText")
            Core.<*> (o Core..:? "default_sender")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "enableCollaborativeInbox")
            Core.<*> (o Core..:? "favoriteRepliesOnTop")
            Core.<*> (o Core..:? "includeCustomFooter")
            Core.<*> (o Core..:? "includeInGlobalAddressList")
            Core.<*> (o Core..:? "isArchived")
            Core.<*> (o Core..:? "kind" Core..!= "groupsSettings#groups")
            Core.<*> (o Core..:? "maxMessageBytes")
            Core.<*> (o Core..:? "membersCanPostAsTheGroup")
            Core.<*> (o Core..:? "messageDisplayFont")
            Core.<*> (o Core..:? "messageModerationLevel")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "primaryLanguage")
            Core.<*> (o Core..:? "replyTo")
            Core.<*> (o Core..:? "sendMessageDenyNotification")
            Core.<*> (o Core..:? "showInGroupDirectory")
            Core.<*> (o Core..:? "spamModerationLevel")
            Core.<*> (o Core..:? "whoCanAdd")
            Core.<*> (o Core..:? "whoCanAddReferences")
            Core.<*> (o Core..:? "whoCanApproveMembers")
            Core.<*> (o Core..:? "whoCanApproveMessages")
            Core.<*> (o Core..:? "whoCanAssignTopics")
            Core.<*> (o Core..:? "whoCanAssistContent")
            Core.<*> (o Core..:? "whoCanBanUsers")
            Core.<*> (o Core..:? "whoCanContactOwner")
            Core.<*> (o Core..:? "whoCanDeleteAnyPost")
            Core.<*> (o Core..:? "whoCanDeleteTopics")
            Core.<*> (o Core..:? "whoCanDiscoverGroup")
            Core.<*> (o Core..:? "whoCanEnterFreeFormTags")
            Core.<*> (o Core..:? "whoCanHideAbuse")
            Core.<*> (o Core..:? "whoCanInvite")
            Core.<*> (o Core..:? "whoCanJoin")
            Core.<*> (o Core..:? "whoCanLeaveGroup")
            Core.<*> (o Core..:? "whoCanLockTopics")
            Core.<*> (o Core..:? "whoCanMakeTopicsSticky")
            Core.<*> (o Core..:? "whoCanMarkDuplicate")
            Core.<*> (o Core..:? "whoCanMarkFavoriteReplyOnAnyTopic")
            Core.<*> (o Core..:? "whoCanMarkFavoriteReplyOnOwnTopic")
            Core.<*> (o Core..:? "whoCanMarkNoResponseNeeded")
            Core.<*> (o Core..:? "whoCanModerateContent")
            Core.<*> (o Core..:? "whoCanModerateMembers")
            Core.<*> (o Core..:? "whoCanModifyMembers")
            Core.<*> (o Core..:? "whoCanModifyTagsAndCategories")
            Core.<*> (o Core..:? "whoCanMoveTopicsIn")
            Core.<*> (o Core..:? "whoCanMoveTopicsOut")
            Core.<*> (o Core..:? "whoCanPostAnnouncements")
            Core.<*> (o Core..:? "whoCanPostMessage")
            Core.<*> (o Core..:? "whoCanTakeTopics")
            Core.<*> (o Core..:? "whoCanUnassignTopic")
            Core.<*> (o Core..:? "whoCanUnmarkFavoriteReplyOnAnyTopic")
            Core.<*> (o Core..:? "whoCanViewGroup")
            Core.<*> (o Core..:? "whoCanViewMembership")
      )

instance Core.ToJSON Groups where
  toJSON Groups {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowExternalMembers" Core..=)
              Core.<$> allowExternalMembers,
            ("allowGoogleCommunication" Core..=)
              Core.<$> allowGoogleCommunication,
            ("allowWebPosting" Core..=) Core.<$> allowWebPosting,
            ("archiveOnly" Core..=) Core.<$> archiveOnly,
            ("customFooterText" Core..=)
              Core.<$> customFooterText,
            ("customReplyTo" Core..=) Core.<$> customReplyTo,
            ("customRolesEnabledForSettingsToBeMerged" Core..=)
              Core.<$> customRolesEnabledForSettingsToBeMerged,
            ("defaultMessageDenyNotificationText" Core..=)
              Core.<$> defaultMessageDenyNotificationText,
            ("default_sender" Core..=) Core.<$> defaultSender,
            ("description" Core..=) Core.<$> description,
            ("email" Core..=) Core.<$> email,
            ("enableCollaborativeInbox" Core..=)
              Core.<$> enableCollaborativeInbox,
            ("favoriteRepliesOnTop" Core..=)
              Core.<$> favoriteRepliesOnTop,
            ("includeCustomFooter" Core..=)
              Core.<$> includeCustomFooter,
            ("includeInGlobalAddressList" Core..=)
              Core.<$> includeInGlobalAddressList,
            ("isArchived" Core..=) Core.<$> isArchived,
            Core.Just ("kind" Core..= kind),
            ("maxMessageBytes" Core..=) Core.<$> maxMessageBytes,
            ("membersCanPostAsTheGroup" Core..=)
              Core.<$> membersCanPostAsTheGroup,
            ("messageDisplayFont" Core..=)
              Core.<$> messageDisplayFont,
            ("messageModerationLevel" Core..=)
              Core.<$> messageModerationLevel,
            ("name" Core..=) Core.<$> name,
            ("primaryLanguage" Core..=) Core.<$> primaryLanguage,
            ("replyTo" Core..=) Core.<$> replyTo,
            ("sendMessageDenyNotification" Core..=)
              Core.<$> sendMessageDenyNotification,
            ("showInGroupDirectory" Core..=)
              Core.<$> showInGroupDirectory,
            ("spamModerationLevel" Core..=)
              Core.<$> spamModerationLevel,
            ("whoCanAdd" Core..=) Core.<$> whoCanAdd,
            ("whoCanAddReferences" Core..=)
              Core.<$> whoCanAddReferences,
            ("whoCanApproveMembers" Core..=)
              Core.<$> whoCanApproveMembers,
            ("whoCanApproveMessages" Core..=)
              Core.<$> whoCanApproveMessages,
            ("whoCanAssignTopics" Core..=)
              Core.<$> whoCanAssignTopics,
            ("whoCanAssistContent" Core..=)
              Core.<$> whoCanAssistContent,
            ("whoCanBanUsers" Core..=) Core.<$> whoCanBanUsers,
            ("whoCanContactOwner" Core..=)
              Core.<$> whoCanContactOwner,
            ("whoCanDeleteAnyPost" Core..=)
              Core.<$> whoCanDeleteAnyPost,
            ("whoCanDeleteTopics" Core..=)
              Core.<$> whoCanDeleteTopics,
            ("whoCanDiscoverGroup" Core..=)
              Core.<$> whoCanDiscoverGroup,
            ("whoCanEnterFreeFormTags" Core..=)
              Core.<$> whoCanEnterFreeFormTags,
            ("whoCanHideAbuse" Core..=) Core.<$> whoCanHideAbuse,
            ("whoCanInvite" Core..=) Core.<$> whoCanInvite,
            ("whoCanJoin" Core..=) Core.<$> whoCanJoin,
            ("whoCanLeaveGroup" Core..=)
              Core.<$> whoCanLeaveGroup,
            ("whoCanLockTopics" Core..=)
              Core.<$> whoCanLockTopics,
            ("whoCanMakeTopicsSticky" Core..=)
              Core.<$> whoCanMakeTopicsSticky,
            ("whoCanMarkDuplicate" Core..=)
              Core.<$> whoCanMarkDuplicate,
            ("whoCanMarkFavoriteReplyOnAnyTopic" Core..=)
              Core.<$> whoCanMarkFavoriteReplyOnAnyTopic,
            ("whoCanMarkFavoriteReplyOnOwnTopic" Core..=)
              Core.<$> whoCanMarkFavoriteReplyOnOwnTopic,
            ("whoCanMarkNoResponseNeeded" Core..=)
              Core.<$> whoCanMarkNoResponseNeeded,
            ("whoCanModerateContent" Core..=)
              Core.<$> whoCanModerateContent,
            ("whoCanModerateMembers" Core..=)
              Core.<$> whoCanModerateMembers,
            ("whoCanModifyMembers" Core..=)
              Core.<$> whoCanModifyMembers,
            ("whoCanModifyTagsAndCategories" Core..=)
              Core.<$> whoCanModifyTagsAndCategories,
            ("whoCanMoveTopicsIn" Core..=)
              Core.<$> whoCanMoveTopicsIn,
            ("whoCanMoveTopicsOut" Core..=)
              Core.<$> whoCanMoveTopicsOut,
            ("whoCanPostAnnouncements" Core..=)
              Core.<$> whoCanPostAnnouncements,
            ("whoCanPostMessage" Core..=)
              Core.<$> whoCanPostMessage,
            ("whoCanTakeTopics" Core..=)
              Core.<$> whoCanTakeTopics,
            ("whoCanUnassignTopic" Core..=)
              Core.<$> whoCanUnassignTopic,
            ("whoCanUnmarkFavoriteReplyOnAnyTopic" Core..=)
              Core.<$> whoCanUnmarkFavoriteReplyOnAnyTopic,
            ("whoCanViewGroup" Core..=) Core.<$> whoCanViewGroup,
            ("whoCanViewMembership" Core..=)
              Core.<$> whoCanViewMembership
          ]
      )
