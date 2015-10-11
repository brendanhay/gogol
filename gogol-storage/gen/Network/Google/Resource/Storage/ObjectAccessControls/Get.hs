{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectAccessControlsGet@.
module Network.Google.Resource.Storage.ObjectAccessControls.Get
    (
    -- * REST Resource
      ObjectAccessControlsGetResource

    -- * Creating a Request
    , objectAccessControlsGet'
    , ObjectAccessControlsGet'

    -- * Request Lenses
    , oacgQuotaUser
    , oacgPrettyPrint
    , oacgUserIP
    , oacgBucket
    , oacgKey
    , oacgObject
    , oacgOAuthToken
    , oacgEntity
    , oacgGeneration
    , oacgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsGet@ method which the
-- 'ObjectAccessControlsGet'' request conforms to.
type ObjectAccessControlsGetResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "generation" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ObjectAccessControl

-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ 'objectAccessControlsGet'' smart constructor.
data ObjectAccessControlsGet' = ObjectAccessControlsGet'
    { _oacgQuotaUser   :: !(Maybe Text)
    , _oacgPrettyPrint :: !Bool
    , _oacgUserIP      :: !(Maybe Text)
    , _oacgBucket      :: !Text
    , _oacgKey         :: !(Maybe AuthKey)
    , _oacgObject      :: !Text
    , _oacgOAuthToken  :: !(Maybe OAuthToken)
    , _oacgEntity      :: !Text
    , _oacgGeneration  :: !(Maybe Int64)
    , _oacgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacgQuotaUser'
--
-- * 'oacgPrettyPrint'
--
-- * 'oacgUserIP'
--
-- * 'oacgBucket'
--
-- * 'oacgKey'
--
-- * 'oacgObject'
--
-- * 'oacgOAuthToken'
--
-- * 'oacgEntity'
--
-- * 'oacgGeneration'
--
-- * 'oacgFields'
objectAccessControlsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsGet'
objectAccessControlsGet' pOacgBucket_ pOacgObject_ pOacgEntity_ =
    ObjectAccessControlsGet'
    { _oacgQuotaUser = Nothing
    , _oacgPrettyPrint = True
    , _oacgUserIP = Nothing
    , _oacgBucket = pOacgBucket_
    , _oacgKey = Nothing
    , _oacgObject = pOacgObject_
    , _oacgOAuthToken = Nothing
    , _oacgEntity = pOacgEntity_
    , _oacgGeneration = Nothing
    , _oacgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oacgQuotaUser :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgQuotaUser
  = lens _oacgQuotaUser
      (\ s a -> s{_oacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
oacgPrettyPrint :: Lens' ObjectAccessControlsGet' Bool
oacgPrettyPrint
  = lens _oacgPrettyPrint
      (\ s a -> s{_oacgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oacgUserIP :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgUserIP
  = lens _oacgUserIP (\ s a -> s{_oacgUserIP = a})

-- | Name of a bucket.
oacgBucket :: Lens' ObjectAccessControlsGet' Text
oacgBucket
  = lens _oacgBucket (\ s a -> s{_oacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacgKey :: Lens' ObjectAccessControlsGet' (Maybe AuthKey)
oacgKey = lens _oacgKey (\ s a -> s{_oacgKey = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacgObject :: Lens' ObjectAccessControlsGet' Text
oacgObject
  = lens _oacgObject (\ s a -> s{_oacgObject = a})

-- | OAuth 2.0 token for the current user.
oacgOAuthToken :: Lens' ObjectAccessControlsGet' (Maybe OAuthToken)
oacgOAuthToken
  = lens _oacgOAuthToken
      (\ s a -> s{_oacgOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacgEntity :: Lens' ObjectAccessControlsGet' Text
oacgEntity
  = lens _oacgEntity (\ s a -> s{_oacgEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacgGeneration :: Lens' ObjectAccessControlsGet' (Maybe Int64)
oacgGeneration
  = lens _oacgGeneration
      (\ s a -> s{_oacgGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacgFields :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgFields
  = lens _oacgFields (\ s a -> s{_oacgFields = a})

instance GoogleAuth ObjectAccessControlsGet' where
        _AuthKey = oacgKey . _Just
        _AuthToken = oacgOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsGet' where
        type Rs ObjectAccessControlsGet' =
             ObjectAccessControl
        request = requestWith storageRequest
        requestWith rq ObjectAccessControlsGet'{..}
          = go _oacgBucket _oacgObject _oacgEntity
              _oacgGeneration
              _oacgQuotaUser
              (Just _oacgPrettyPrint)
              _oacgUserIP
              _oacgFields
              _oacgKey
              _oacgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ObjectAccessControlsGetResource)
                      rq
