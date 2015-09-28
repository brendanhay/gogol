{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.ObjectAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.objectAccessControls.insert@.
module Network.Google.API.Storage.ObjectAccessControls.Insert
    (
    -- * REST Resource
      ObjectAccessControlsInsertAPI

    -- * Creating a Request
    , objectAccessControlsInsert'
    , ObjectAccessControlsInsert'

    -- * Request Lenses
    , oaciQuotaUser
    , oaciPrettyPrint
    , oaciUserIp
    , oaciBucket
    , oaciKey
    , oaciObject
    , oaciOauthToken
    , oaciGeneration
    , oaciFields
    , oaciAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.objectAccessControls.insert which the
-- 'ObjectAccessControlsInsert'' request conforms to.
type ObjectAccessControlsInsertAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "generation" Word64 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] ObjectAccessControl

-- | Creates a new ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsInsert'' smart constructor.
data ObjectAccessControlsInsert' = ObjectAccessControlsInsert'
    { _oaciQuotaUser   :: !(Maybe Text)
    , _oaciPrettyPrint :: !Bool
    , _oaciUserIp      :: !(Maybe Text)
    , _oaciBucket      :: !Text
    , _oaciKey         :: !(Maybe Text)
    , _oaciObject      :: !Text
    , _oaciOauthToken  :: !(Maybe Text)
    , _oaciGeneration  :: !(Maybe Word64)
    , _oaciFields      :: !(Maybe Text)
    , _oaciAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaciQuotaUser'
--
-- * 'oaciPrettyPrint'
--
-- * 'oaciUserIp'
--
-- * 'oaciBucket'
--
-- * 'oaciKey'
--
-- * 'oaciObject'
--
-- * 'oaciOauthToken'
--
-- * 'oaciGeneration'
--
-- * 'oaciFields'
--
-- * 'oaciAlt'
objectAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectAccessControlsInsert'
objectAccessControlsInsert' pOaciBucket_ pOaciObject_ =
    ObjectAccessControlsInsert'
    { _oaciQuotaUser = Nothing
    , _oaciPrettyPrint = True
    , _oaciUserIp = Nothing
    , _oaciBucket = pOaciBucket_
    , _oaciKey = Nothing
    , _oaciObject = pOaciObject_
    , _oaciOauthToken = Nothing
    , _oaciGeneration = Nothing
    , _oaciFields = Nothing
    , _oaciAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaciQuotaUser :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciQuotaUser
  = lens _oaciQuotaUser
      (\ s a -> s{_oaciQuotaUser = a})

-- | Returns response with indentations and line breaks.
oaciPrettyPrint :: Lens' ObjectAccessControlsInsert' Bool
oaciPrettyPrint
  = lens _oaciPrettyPrint
      (\ s a -> s{_oaciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaciUserIp :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciUserIp
  = lens _oaciUserIp (\ s a -> s{_oaciUserIp = a})

-- | Name of a bucket.
oaciBucket :: Lens' ObjectAccessControlsInsert' Text
oaciBucket
  = lens _oaciBucket (\ s a -> s{_oaciBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaciKey :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciKey = lens _oaciKey (\ s a -> s{_oaciKey = a})

-- | Name of the object.
oaciObject :: Lens' ObjectAccessControlsInsert' Text
oaciObject
  = lens _oaciObject (\ s a -> s{_oaciObject = a})

-- | OAuth 2.0 token for the current user.
oaciOauthToken :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciOauthToken
  = lens _oaciOauthToken
      (\ s a -> s{_oaciOauthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oaciGeneration :: Lens' ObjectAccessControlsInsert' (Maybe Word64)
oaciGeneration
  = lens _oaciGeneration
      (\ s a -> s{_oaciGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oaciFields :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciFields
  = lens _oaciFields (\ s a -> s{_oaciFields = a})

-- | Data format for the response.
oaciAlt :: Lens' ObjectAccessControlsInsert' Alt
oaciAlt = lens _oaciAlt (\ s a -> s{_oaciAlt = a})

instance GoogleRequest ObjectAccessControlsInsert'
         where
        type Rs ObjectAccessControlsInsert' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsInsert'{..}
          = go _oaciQuotaUser (Just _oaciPrettyPrint)
              _oaciUserIp
              _oaciBucket
              _oaciKey
              _oaciObject
              _oaciOauthToken
              _oaciGeneration
              _oaciFields
              (Just _oaciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsInsertAPI)
                      r
                      u
