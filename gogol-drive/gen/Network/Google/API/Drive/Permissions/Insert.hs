{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Permissions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a permission for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.insert@.
module Network.Google.API.Drive.Permissions.Insert
    (
    -- * REST Resource
      PermissionsInsertAPI

    -- * Creating a Request
    , permissionsInsert'
    , PermissionsInsert'

    -- * Request Lenses
    , perQuotaUser
    , perPrettyPrint
    , perUserIp
    , perKey
    , perEmailMessage
    , perFileId
    , perOauthToken
    , perSendNotificationEmails
    , perFields
    , perAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.permissions.insert which the
-- 'PermissionsInsert'' request conforms to.
type PermissionsInsertAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "emailMessage" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "sendNotificationEmails" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Permission

-- | Inserts a permission for a file.
--
-- /See:/ 'permissionsInsert'' smart constructor.
data PermissionsInsert' = PermissionsInsert'
    { _perQuotaUser              :: !(Maybe Text)
    , _perPrettyPrint            :: !Bool
    , _perUserIp                 :: !(Maybe Text)
    , _perKey                    :: !(Maybe Text)
    , _perEmailMessage           :: !(Maybe Text)
    , _perFileId                 :: !Text
    , _perOauthToken             :: !(Maybe Text)
    , _perSendNotificationEmails :: !Bool
    , _perFields                 :: !(Maybe Text)
    , _perAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perQuotaUser'
--
-- * 'perPrettyPrint'
--
-- * 'perUserIp'
--
-- * 'perKey'
--
-- * 'perEmailMessage'
--
-- * 'perFileId'
--
-- * 'perOauthToken'
--
-- * 'perSendNotificationEmails'
--
-- * 'perFields'
--
-- * 'perAlt'
permissionsInsert'
    :: Text -- ^ 'fileId'
    -> PermissionsInsert'
permissionsInsert' pPerFileId_ =
    PermissionsInsert'
    { _perQuotaUser = Nothing
    , _perPrettyPrint = True
    , _perUserIp = Nothing
    , _perKey = Nothing
    , _perEmailMessage = Nothing
    , _perFileId = pPerFileId_
    , _perOauthToken = Nothing
    , _perSendNotificationEmails = True
    , _perFields = Nothing
    , _perAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
perQuotaUser :: Lens' PermissionsInsert' (Maybe Text)
perQuotaUser
  = lens _perQuotaUser (\ s a -> s{_perQuotaUser = a})

-- | Returns response with indentations and line breaks.
perPrettyPrint :: Lens' PermissionsInsert' Bool
perPrettyPrint
  = lens _perPrettyPrint
      (\ s a -> s{_perPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
perUserIp :: Lens' PermissionsInsert' (Maybe Text)
perUserIp
  = lens _perUserIp (\ s a -> s{_perUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
perKey :: Lens' PermissionsInsert' (Maybe Text)
perKey = lens _perKey (\ s a -> s{_perKey = a})

-- | A custom message to include in notification emails.
perEmailMessage :: Lens' PermissionsInsert' (Maybe Text)
perEmailMessage
  = lens _perEmailMessage
      (\ s a -> s{_perEmailMessage = a})

-- | The ID for the file.
perFileId :: Lens' PermissionsInsert' Text
perFileId
  = lens _perFileId (\ s a -> s{_perFileId = a})

-- | OAuth 2.0 token for the current user.
perOauthToken :: Lens' PermissionsInsert' (Maybe Text)
perOauthToken
  = lens _perOauthToken
      (\ s a -> s{_perOauthToken = a})

-- | Whether to send notification emails when sharing to users or groups.
-- This parameter is ignored and an email is sent if the role is owner.
perSendNotificationEmails :: Lens' PermissionsInsert' Bool
perSendNotificationEmails
  = lens _perSendNotificationEmails
      (\ s a -> s{_perSendNotificationEmails = a})

-- | Selector specifying which fields to include in a partial response.
perFields :: Lens' PermissionsInsert' (Maybe Text)
perFields
  = lens _perFields (\ s a -> s{_perFields = a})

-- | Data format for the response.
perAlt :: Lens' PermissionsInsert' Alt
perAlt = lens _perAlt (\ s a -> s{_perAlt = a})

instance GoogleRequest PermissionsInsert' where
        type Rs PermissionsInsert' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsInsert'{..}
          = go _perQuotaUser (Just _perPrettyPrint) _perUserIp
              _perKey
              _perEmailMessage
              _perFileId
              _perOauthToken
              (Just _perSendNotificationEmails)
              _perFields
              (Just _perAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsInsertAPI)
                      r
                      u
