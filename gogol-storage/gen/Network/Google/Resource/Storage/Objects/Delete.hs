{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.Objects.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes data blobs and associated metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsDelete@.
module Network.Google.Resource.Storage.Objects.Delete
    (
    -- * REST Resource
      ObjectsDeleteResource

    -- * Creating a Request
    , objectsDelete'
    , ObjectsDelete'

    -- * Request Lenses
    , odQuotaUser
    , odIfMetagenerationMatch
    , odIfGenerationNotMatch
    , odPrettyPrint
    , odIfGenerationMatch
    , odUserIP
    , odBucket
    , odKey
    , odIfMetagenerationNotMatch
    , odObject
    , odOAuthToken
    , odGeneration
    , odFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsDelete@ which the
-- 'ObjectsDelete'' request conforms to.
type ObjectsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Word64 :>
               QueryParam "ifGenerationNotMatch" Word64 :>
                 QueryParam "ifGenerationMatch" Word64 :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "generation" Word64 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes data blobs and associated metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
--
-- /See:/ 'objectsDelete'' smart constructor.
data ObjectsDelete' = ObjectsDelete'
    { _odQuotaUser                :: !(Maybe Text)
    , _odIfMetagenerationMatch    :: !(Maybe Word64)
    , _odIfGenerationNotMatch     :: !(Maybe Word64)
    , _odPrettyPrint              :: !Bool
    , _odIfGenerationMatch        :: !(Maybe Word64)
    , _odUserIP                   :: !(Maybe Text)
    , _odBucket                   :: !Text
    , _odKey                      :: !(Maybe Key)
    , _odIfMetagenerationNotMatch :: !(Maybe Word64)
    , _odObject                   :: !Text
    , _odOAuthToken               :: !(Maybe OAuthToken)
    , _odGeneration               :: !(Maybe Word64)
    , _odFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odQuotaUser'
--
-- * 'odIfMetagenerationMatch'
--
-- * 'odIfGenerationNotMatch'
--
-- * 'odPrettyPrint'
--
-- * 'odIfGenerationMatch'
--
-- * 'odUserIP'
--
-- * 'odBucket'
--
-- * 'odKey'
--
-- * 'odIfMetagenerationNotMatch'
--
-- * 'odObject'
--
-- * 'odOAuthToken'
--
-- * 'odGeneration'
--
-- * 'odFields'
objectsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectsDelete'
objectsDelete' pOdBucket_ pOdObject_ =
    ObjectsDelete'
    { _odQuotaUser = Nothing
    , _odIfMetagenerationMatch = Nothing
    , _odIfGenerationNotMatch = Nothing
    , _odPrettyPrint = True
    , _odIfGenerationMatch = Nothing
    , _odUserIP = Nothing
    , _odBucket = pOdBucket_
    , _odKey = Nothing
    , _odIfMetagenerationNotMatch = Nothing
    , _odObject = pOdObject_
    , _odOAuthToken = Nothing
    , _odGeneration = Nothing
    , _odFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
odQuotaUser :: Lens' ObjectsDelete' (Maybe Text)
odQuotaUser
  = lens _odQuotaUser (\ s a -> s{_odQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
odIfMetagenerationMatch :: Lens' ObjectsDelete' (Maybe Word64)
odIfMetagenerationMatch
  = lens _odIfMetagenerationMatch
      (\ s a -> s{_odIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
odIfGenerationNotMatch :: Lens' ObjectsDelete' (Maybe Word64)
odIfGenerationNotMatch
  = lens _odIfGenerationNotMatch
      (\ s a -> s{_odIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
odPrettyPrint :: Lens' ObjectsDelete' Bool
odPrettyPrint
  = lens _odPrettyPrint
      (\ s a -> s{_odPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
odIfGenerationMatch :: Lens' ObjectsDelete' (Maybe Word64)
odIfGenerationMatch
  = lens _odIfGenerationMatch
      (\ s a -> s{_odIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
odUserIP :: Lens' ObjectsDelete' (Maybe Text)
odUserIP = lens _odUserIP (\ s a -> s{_odUserIP = a})

-- | Name of the bucket in which the object resides.
odBucket :: Lens' ObjectsDelete' Text
odBucket = lens _odBucket (\ s a -> s{_odBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odKey :: Lens' ObjectsDelete' (Maybe Key)
odKey = lens _odKey (\ s a -> s{_odKey = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
odIfMetagenerationNotMatch :: Lens' ObjectsDelete' (Maybe Word64)
odIfMetagenerationNotMatch
  = lens _odIfMetagenerationNotMatch
      (\ s a -> s{_odIfMetagenerationNotMatch = a})

-- | Name of the object.
odObject :: Lens' ObjectsDelete' Text
odObject = lens _odObject (\ s a -> s{_odObject = a})

-- | OAuth 2.0 token for the current user.
odOAuthToken :: Lens' ObjectsDelete' (Maybe OAuthToken)
odOAuthToken
  = lens _odOAuthToken (\ s a -> s{_odOAuthToken = a})

-- | If present, permanently deletes a specific revision of this object (as
-- opposed to the latest version, the default).
odGeneration :: Lens' ObjectsDelete' (Maybe Word64)
odGeneration
  = lens _odGeneration (\ s a -> s{_odGeneration = a})

-- | Selector specifying which fields to include in a partial response.
odFields :: Lens' ObjectsDelete' (Maybe Text)
odFields = lens _odFields (\ s a -> s{_odFields = a})

instance GoogleAuth ObjectsDelete' where
        authKey = odKey . _Just
        authToken = odOAuthToken . _Just

instance GoogleRequest ObjectsDelete' where
        type Rs ObjectsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsDelete'{..}
          = go _odBucket _odObject _odIfMetagenerationMatch
              _odIfGenerationNotMatch
              _odIfGenerationMatch
              _odIfMetagenerationNotMatch
              _odGeneration
              _odQuotaUser
              (Just _odPrettyPrint)
              _odUserIP
              _odFields
              _odKey
              _odOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsDeleteResource)
                      r
                      u
