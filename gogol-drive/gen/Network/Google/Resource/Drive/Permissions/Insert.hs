{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a permission for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsInsert@.
module Network.Google.Resource.Drive.Permissions.Insert
    (
    -- * REST Resource
      PermissionsInsertResource

    -- * Creating a Request
    , permissionsInsert'
    , PermissionsInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piUserIP
    , piKey
    , piEmailMessage
    , piFileId
    , piOAuthToken
    , piPermission
    , piSendNotificationEmails
    , piFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsInsert@ which the
-- 'PermissionsInsert'' request conforms to.
type PermissionsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "emailMessage" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "sendNotificationEmails" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Permission :>
                               Post '[JSON] Permission

-- | Inserts a permission for a file.
--
-- /See:/ 'permissionsInsert'' smart constructor.
data PermissionsInsert' = PermissionsInsert'
    { _piQuotaUser              :: !(Maybe Text)
    , _piPrettyPrint            :: !Bool
    , _piUserIP                 :: !(Maybe Text)
    , _piKey                    :: !(Maybe Key)
    , _piEmailMessage           :: !(Maybe Text)
    , _piFileId                 :: !Text
    , _piOAuthToken             :: !(Maybe OAuthToken)
    , _piPermission             :: !Permission
    , _piSendNotificationEmails :: !Bool
    , _piFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIP'
--
-- * 'piKey'
--
-- * 'piEmailMessage'
--
-- * 'piFileId'
--
-- * 'piOAuthToken'
--
-- * 'piPermission'
--
-- * 'piSendNotificationEmails'
--
-- * 'piFields'
permissionsInsert'
    :: Text -- ^ 'fileId'
    -> Permission -- ^ 'Permission'
    -> PermissionsInsert'
permissionsInsert' pPiFileId_ pPiPermission_ =
    PermissionsInsert'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIP = Nothing
    , _piKey = Nothing
    , _piEmailMessage = Nothing
    , _piFileId = pPiFileId_
    , _piOAuthToken = Nothing
    , _piPermission = pPiPermission_
    , _piSendNotificationEmails = True
    , _piFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PermissionsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PermissionsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIP :: Lens' PermissionsInsert' (Maybe Text)
piUserIP = lens _piUserIP (\ s a -> s{_piUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PermissionsInsert' (Maybe Key)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | A custom message to include in notification emails.
piEmailMessage :: Lens' PermissionsInsert' (Maybe Text)
piEmailMessage
  = lens _piEmailMessage
      (\ s a -> s{_piEmailMessage = a})

-- | The ID for the file.
piFileId :: Lens' PermissionsInsert' Text
piFileId = lens _piFileId (\ s a -> s{_piFileId = a})

-- | OAuth 2.0 token for the current user.
piOAuthToken :: Lens' PermissionsInsert' (Maybe OAuthToken)
piOAuthToken
  = lens _piOAuthToken (\ s a -> s{_piOAuthToken = a})

-- | Multipart request metadata.
piPermission :: Lens' PermissionsInsert' Permission
piPermission
  = lens _piPermission (\ s a -> s{_piPermission = a})

-- | Whether to send notification emails when sharing to users or groups.
-- This parameter is ignored and an email is sent if the role is owner.
piSendNotificationEmails :: Lens' PermissionsInsert' Bool
piSendNotificationEmails
  = lens _piSendNotificationEmails
      (\ s a -> s{_piSendNotificationEmails = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PermissionsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

instance GoogleAuth PermissionsInsert' where
        authKey = piKey . _Just
        authToken = piOAuthToken . _Just

instance GoogleRequest PermissionsInsert' where
        type Rs PermissionsInsert' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsInsert'{..}
          = go _piQuotaUser (Just _piPrettyPrint) _piUserIP
              _piKey
              _piEmailMessage
              _piFileId
              _piOAuthToken
              (Just _piSendNotificationEmails)
              _piFields
              (Just AltJSON)
              _piPermission
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsInsertResource)
                      r
                      u
