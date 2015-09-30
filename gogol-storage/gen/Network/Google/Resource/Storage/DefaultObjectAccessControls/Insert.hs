{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsInsert@.
module Storage.DefaultObjectAccessControls.Insert
    (
    -- * REST Resource
      DefaultObjectAccessControlsInsertAPI

    -- * Creating a Request
    , defaultObjectAccessControlsInsert
    , DefaultObjectAccessControlsInsert

    -- * Request Lenses
    , doaciQuotaUser
    , doaciPrettyPrint
    , doaciUserIp
    , doaciBucket
    , doaciKey
    , doaciOauthToken
    , doaciFields
    , doaciAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsInsert@ which the
-- 'DefaultObjectAccessControlsInsert' request conforms to.
type DefaultObjectAccessControlsInsertAPI =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Post '[JSON] ObjectAccessControl

-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsInsert' smart constructor.
data DefaultObjectAccessControlsInsert = DefaultObjectAccessControlsInsert
    { _doaciQuotaUser   :: !(Maybe Text)
    , _doaciPrettyPrint :: !Bool
    , _doaciUserIp      :: !(Maybe Text)
    , _doaciBucket      :: !Text
    , _doaciKey         :: !(Maybe Text)
    , _doaciOauthToken  :: !(Maybe Text)
    , _doaciFields      :: !(Maybe Text)
    , _doaciAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doaciQuotaUser'
--
-- * 'doaciPrettyPrint'
--
-- * 'doaciUserIp'
--
-- * 'doaciBucket'
--
-- * 'doaciKey'
--
-- * 'doaciOauthToken'
--
-- * 'doaciFields'
--
-- * 'doaciAlt'
defaultObjectAccessControlsInsert
    :: Text -- ^ 'bucket'
    -> DefaultObjectAccessControlsInsert
defaultObjectAccessControlsInsert pDoaciBucket_ =
    DefaultObjectAccessControlsInsert
    { _doaciQuotaUser = Nothing
    , _doaciPrettyPrint = True
    , _doaciUserIp = Nothing
    , _doaciBucket = pDoaciBucket_
    , _doaciKey = Nothing
    , _doaciOauthToken = Nothing
    , _doaciFields = Nothing
    , _doaciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doaciQuotaUser :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciQuotaUser
  = lens _doaciQuotaUser
      (\ s a -> s{_doaciQuotaUser = a})

-- | Returns response with indentations and line breaks.
doaciPrettyPrint :: Lens' DefaultObjectAccessControlsInsert' Bool
doaciPrettyPrint
  = lens _doaciPrettyPrint
      (\ s a -> s{_doaciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doaciUserIp :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciUserIp
  = lens _doaciUserIp (\ s a -> s{_doaciUserIp = a})

-- | Name of a bucket.
doaciBucket :: Lens' DefaultObjectAccessControlsInsert' Text
doaciBucket
  = lens _doaciBucket (\ s a -> s{_doaciBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doaciKey :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciKey = lens _doaciKey (\ s a -> s{_doaciKey = a})

-- | OAuth 2.0 token for the current user.
doaciOauthToken :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciOauthToken
  = lens _doaciOauthToken
      (\ s a -> s{_doaciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
doaciFields :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciFields
  = lens _doaciFields (\ s a -> s{_doaciFields = a})

-- | Data format for the response.
doaciAlt :: Lens' DefaultObjectAccessControlsInsert' Text
doaciAlt = lens _doaciAlt (\ s a -> s{_doaciAlt = a})

instance GoogleRequest
         DefaultObjectAccessControlsInsert' where
        type Rs DefaultObjectAccessControlsInsert' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsInsert{..}
          = go _doaciQuotaUser _doaciPrettyPrint _doaciUserIp
              _doaciBucket
              _doaciKey
              _doaciOauthToken
              _doaciFields
              _doaciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DefaultObjectAccessControlsInsertAPI)
                      r
                      u
