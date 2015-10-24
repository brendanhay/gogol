{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsSettings.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
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
data Groups = Groups
    { _gEmail                              :: !(Maybe Text)
    , _gSendMessageDenyNotification        :: !(Maybe Text)
    , _gWhoCanPostMessage                  :: !(Maybe Text)
    , _gAllowExternalMembers               :: !(Maybe Text)
    , _gShowInGroupDirectory               :: !(Maybe Text)
    , _gSpamModerationLevel                :: !(Maybe Text)
    , _gKind                               :: !Text
    , _gWhoCanViewMembership               :: !(Maybe Text)
    , _gMembersCanPostAsTheGroup           :: !(Maybe Text)
    , _gWhoCanViewGroup                    :: !(Maybe Text)
    , _gWhoCanJoin                         :: !(Maybe Text)
    , _gArchiveOnly                        :: !(Maybe Text)
    , _gMaxMessageBytes                    :: !(Maybe (Textual Int32))
    , _gReplyTo                            :: !(Maybe Text)
    , _gMessageModerationLevel             :: !(Maybe Text)
    , _gIncludeInGlobalAddressList         :: !(Maybe Text)
    , _gIsArchived                         :: !(Maybe Text)
    , _gName                               :: !(Maybe Text)
    , _gMessageDisplayFont                 :: !(Maybe Text)
    , _gCustomReplyTo                      :: !(Maybe Text)
    , _gWhoCanContactOwner                 :: !(Maybe Text)
    , _gWhoCanInvite                       :: !(Maybe Text)
    , _gWhoCanLeaveGroup                   :: !(Maybe Text)
    , _gAllowGoogleCommunication           :: !(Maybe Text)
    , _gPrimaryLanguage                    :: !(Maybe Text)
    , _gDescription                        :: !(Maybe Text)
    , _gDefaultMessageDenyNotificationText :: !(Maybe Text)
    , _gAllowWebPosting                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEmail'
--
-- * 'gSendMessageDenyNotification'
--
-- * 'gWhoCanPostMessage'
--
-- * 'gAllowExternalMembers'
--
-- * 'gShowInGroupDirectory'
--
-- * 'gSpamModerationLevel'
--
-- * 'gKind'
--
-- * 'gWhoCanViewMembership'
--
-- * 'gMembersCanPostAsTheGroup'
--
-- * 'gWhoCanViewGroup'
--
-- * 'gWhoCanJoin'
--
-- * 'gArchiveOnly'
--
-- * 'gMaxMessageBytes'
--
-- * 'gReplyTo'
--
-- * 'gMessageModerationLevel'
--
-- * 'gIncludeInGlobalAddressList'
--
-- * 'gIsArchived'
--
-- * 'gName'
--
-- * 'gMessageDisplayFont'
--
-- * 'gCustomReplyTo'
--
-- * 'gWhoCanContactOwner'
--
-- * 'gWhoCanInvite'
--
-- * 'gWhoCanLeaveGroup'
--
-- * 'gAllowGoogleCommunication'
--
-- * 'gPrimaryLanguage'
--
-- * 'gDescription'
--
-- * 'gDefaultMessageDenyNotificationText'
--
-- * 'gAllowWebPosting'
groups
    :: Groups
groups =
    Groups
    { _gEmail = Nothing
    , _gSendMessageDenyNotification = Nothing
    , _gWhoCanPostMessage = Nothing
    , _gAllowExternalMembers = Nothing
    , _gShowInGroupDirectory = Nothing
    , _gSpamModerationLevel = Nothing
    , _gKind = "groupsSettings#groups"
    , _gWhoCanViewMembership = Nothing
    , _gMembersCanPostAsTheGroup = Nothing
    , _gWhoCanViewGroup = Nothing
    , _gWhoCanJoin = Nothing
    , _gArchiveOnly = Nothing
    , _gMaxMessageBytes = Nothing
    , _gReplyTo = Nothing
    , _gMessageModerationLevel = Nothing
    , _gIncludeInGlobalAddressList = Nothing
    , _gIsArchived = Nothing
    , _gName = Nothing
    , _gMessageDisplayFont = Nothing
    , _gCustomReplyTo = Nothing
    , _gWhoCanContactOwner = Nothing
    , _gWhoCanInvite = Nothing
    , _gWhoCanLeaveGroup = Nothing
    , _gAllowGoogleCommunication = Nothing
    , _gPrimaryLanguage = Nothing
    , _gDescription = Nothing
    , _gDefaultMessageDenyNotificationText = Nothing
    , _gAllowWebPosting = Nothing
    }

-- | Email id of the group
gEmail :: Lens' Groups (Maybe Text)
gEmail = lens _gEmail (\ s a -> s{_gEmail = a})

-- | Should the member be notified if his message is denied by owner.
gSendMessageDenyNotification :: Lens' Groups (Maybe Text)
gSendMessageDenyNotification
  = lens _gSendMessageDenyNotification
      (\ s a -> s{_gSendMessageDenyNotification = a})

-- | Permissions to post messages to the group. Possible values are:
-- NONE_CAN_POST ALL_MANAGERS_CAN_POST ALL_MEMBERS_CAN_POST
-- ALL_IN_DOMAIN_CAN_POST ANYONE_CAN_POST
gWhoCanPostMessage :: Lens' Groups (Maybe Text)
gWhoCanPostMessage
  = lens _gWhoCanPostMessage
      (\ s a -> s{_gWhoCanPostMessage = a})

-- | Are external members allowed to join the group.
gAllowExternalMembers :: Lens' Groups (Maybe Text)
gAllowExternalMembers
  = lens _gAllowExternalMembers
      (\ s a -> s{_gAllowExternalMembers = a})

-- | Is the group listed in groups directory
gShowInGroupDirectory :: Lens' Groups (Maybe Text)
gShowInGroupDirectory
  = lens _gShowInGroupDirectory
      (\ s a -> s{_gShowInGroupDirectory = a})

-- | Moderation level for messages detected as spam. Possible values are:
-- ALLOW MODERATE SILENTLY_MODERATE REJECT
gSpamModerationLevel :: Lens' Groups (Maybe Text)
gSpamModerationLevel
  = lens _gSpamModerationLevel
      (\ s a -> s{_gSpamModerationLevel = a})

-- | The type of the resource.
gKind :: Lens' Groups Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | Permissions to view membership. Possbile values are:
-- ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
gWhoCanViewMembership :: Lens' Groups (Maybe Text)
gWhoCanViewMembership
  = lens _gWhoCanViewMembership
      (\ s a -> s{_gWhoCanViewMembership = a})

-- | Can members post using the group email address.
gMembersCanPostAsTheGroup :: Lens' Groups (Maybe Text)
gMembersCanPostAsTheGroup
  = lens _gMembersCanPostAsTheGroup
      (\ s a -> s{_gMembersCanPostAsTheGroup = a})

-- | Permissions to view group. Possbile values are: ANYONE_CAN_VIEW
-- ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
gWhoCanViewGroup :: Lens' Groups (Maybe Text)
gWhoCanViewGroup
  = lens _gWhoCanViewGroup
      (\ s a -> s{_gWhoCanViewGroup = a})

-- | Permissions to join the group. Possible values are: ANYONE_CAN_JOIN
-- ALL_IN_DOMAIN_CAN_JOIN INVITED_CAN_JOIN CAN_REQUEST_TO_JOIN
gWhoCanJoin :: Lens' Groups (Maybe Text)
gWhoCanJoin
  = lens _gWhoCanJoin (\ s a -> s{_gWhoCanJoin = a})

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

-- | If this groups should be included in global address list or not.
gIncludeInGlobalAddressList :: Lens' Groups (Maybe Text)
gIncludeInGlobalAddressList
  = lens _gIncludeInGlobalAddressList
      (\ s a -> s{_gIncludeInGlobalAddressList = a})

-- | If the contents of the group are archived.
gIsArchived :: Lens' Groups (Maybe Text)
gIsArchived
  = lens _gIsArchived (\ s a -> s{_gIsArchived = a})

-- | Name of the Group
gName :: Lens' Groups (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Default message display font. Possible values are: DEFAULT_FONT
-- FIXED_WIDTH_FONT
gMessageDisplayFont :: Lens' Groups (Maybe Text)
gMessageDisplayFont
  = lens _gMessageDisplayFont
      (\ s a -> s{_gMessageDisplayFont = a})

-- | Default email to which reply to any message should go.
gCustomReplyTo :: Lens' Groups (Maybe Text)
gCustomReplyTo
  = lens _gCustomReplyTo
      (\ s a -> s{_gCustomReplyTo = a})

-- | Permission to contact owner of the group via web UI. Possbile values
-- are: ANYONE_CAN_CONTACT ALL_IN_DOMAIN_CAN_CONTACT
-- ALL_MEMBERS_CAN_CONTACT ALL_MANAGERS_CAN_CONTACT
gWhoCanContactOwner :: Lens' Groups (Maybe Text)
gWhoCanContactOwner
  = lens _gWhoCanContactOwner
      (\ s a -> s{_gWhoCanContactOwner = a})

-- | Permissions to invite members. Possbile values are:
-- ALL_MEMBERS_CAN_INVITE ALL_MANAGERS_CAN_INVITE
gWhoCanInvite :: Lens' Groups (Maybe Text)
gWhoCanInvite
  = lens _gWhoCanInvite
      (\ s a -> s{_gWhoCanInvite = a})

-- | Permission to leave the group. Possible values are:
-- ALL_MANAGERS_CAN_LEAVE ALL_MEMBERS_CAN_LEAVE
gWhoCanLeaveGroup :: Lens' Groups (Maybe Text)
gWhoCanLeaveGroup
  = lens _gWhoCanLeaveGroup
      (\ s a -> s{_gWhoCanLeaveGroup = a})

-- | Is google allowed to contact admins.
gAllowGoogleCommunication :: Lens' Groups (Maybe Text)
gAllowGoogleCommunication
  = lens _gAllowGoogleCommunication
      (\ s a -> s{_gAllowGoogleCommunication = a})

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

-- | If posting from web is allowed.
gAllowWebPosting :: Lens' Groups (Maybe Text)
gAllowWebPosting
  = lens _gAllowWebPosting
      (\ s a -> s{_gAllowWebPosting = a})

instance FromJSON Groups where
        parseJSON
          = withObject "Groups"
              (\ o ->
                 Groups <$>
                   (o .:? "email") <*>
                     (o .:? "sendMessageDenyNotification")
                     <*> (o .:? "whoCanPostMessage")
                     <*> (o .:? "allowExternalMembers")
                     <*> (o .:? "showInGroupDirectory")
                     <*> (o .:? "spamModerationLevel")
                     <*> (o .:? "kind" .!= "groupsSettings#groups")
                     <*> (o .:? "whoCanViewMembership")
                     <*> (o .:? "membersCanPostAsTheGroup")
                     <*> (o .:? "whoCanViewGroup")
                     <*> (o .:? "whoCanJoin")
                     <*> (o .:? "archiveOnly")
                     <*> (o .:? "maxMessageBytes")
                     <*> (o .:? "replyTo")
                     <*> (o .:? "messageModerationLevel")
                     <*> (o .:? "includeInGlobalAddressList")
                     <*> (o .:? "isArchived")
                     <*> (o .:? "name")
                     <*> (o .:? "messageDisplayFont")
                     <*> (o .:? "customReplyTo")
                     <*> (o .:? "whoCanContactOwner")
                     <*> (o .:? "whoCanInvite")
                     <*> (o .:? "whoCanLeaveGroup")
                     <*> (o .:? "allowGoogleCommunication")
                     <*> (o .:? "primaryLanguage")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultMessageDenyNotificationText")
                     <*> (o .:? "allowWebPosting"))

instance ToJSON Groups where
        toJSON Groups{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gEmail,
                  ("sendMessageDenyNotification" .=) <$>
                    _gSendMessageDenyNotification,
                  ("whoCanPostMessage" .=) <$> _gWhoCanPostMessage,
                  ("allowExternalMembers" .=) <$>
                    _gAllowExternalMembers,
                  ("showInGroupDirectory" .=) <$>
                    _gShowInGroupDirectory,
                  ("spamModerationLevel" .=) <$> _gSpamModerationLevel,
                  Just ("kind" .= _gKind),
                  ("whoCanViewMembership" .=) <$>
                    _gWhoCanViewMembership,
                  ("membersCanPostAsTheGroup" .=) <$>
                    _gMembersCanPostAsTheGroup,
                  ("whoCanViewGroup" .=) <$> _gWhoCanViewGroup,
                  ("whoCanJoin" .=) <$> _gWhoCanJoin,
                  ("archiveOnly" .=) <$> _gArchiveOnly,
                  ("maxMessageBytes" .=) <$> _gMaxMessageBytes,
                  ("replyTo" .=) <$> _gReplyTo,
                  ("messageModerationLevel" .=) <$>
                    _gMessageModerationLevel,
                  ("includeInGlobalAddressList" .=) <$>
                    _gIncludeInGlobalAddressList,
                  ("isArchived" .=) <$> _gIsArchived,
                  ("name" .=) <$> _gName,
                  ("messageDisplayFont" .=) <$> _gMessageDisplayFont,
                  ("customReplyTo" .=) <$> _gCustomReplyTo,
                  ("whoCanContactOwner" .=) <$> _gWhoCanContactOwner,
                  ("whoCanInvite" .=) <$> _gWhoCanInvite,
                  ("whoCanLeaveGroup" .=) <$> _gWhoCanLeaveGroup,
                  ("allowGoogleCommunication" .=) <$>
                    _gAllowGoogleCommunication,
                  ("primaryLanguage" .=) <$> _gPrimaryLanguage,
                  ("description" .=) <$> _gDescription,
                  ("defaultMessageDenyNotificationText" .=) <$>
                    _gDefaultMessageDenyNotificationText,
                  ("allowWebPosting" .=) <$> _gAllowWebPosting])
