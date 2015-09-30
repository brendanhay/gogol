{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.Objects.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a data blob\'s associated metadata. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsPatch@.
module Storage.Objects.Patch
    (
    -- * REST Resource
      ObjectsPatchAPI

    -- * Creating a Request
    , objectsPatch
    , ObjectsPatch

    -- * Request Lenses
    , opQuotaUser
    , opIfMetagenerationMatch
    , opIfGenerationNotMatch
    , opPrettyPrint
    , opIfGenerationMatch
    , opUserIp
    , opBucket
    , opKey
    , opIfMetagenerationNotMatch
    , opObject
    , opProjection
    , opOauthToken
    , opGeneration
    , opFields
    , opAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsPatch@ which the
-- 'ObjectsPatch' request conforms to.
type ObjectsPatchAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Word64 :>
               QueryParam "ifGenerationNotMatch" Word64 :>
                 QueryParam "ifGenerationMatch" Word64 :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" Text :>
                       QueryParam "generation" Word64 :>
                         Patch '[JSON] Object

-- | Updates a data blob\'s associated metadata. This method supports patch
-- semantics.
--
-- /See:/ 'objectsPatch' smart constructor.
data ObjectsPatch = ObjectsPatch
    { _opQuotaUser                :: !(Maybe Text)
    , _opIfMetagenerationMatch    :: !(Maybe Word64)
    , _opIfGenerationNotMatch     :: !(Maybe Word64)
    , _opPrettyPrint              :: !Bool
    , _opIfGenerationMatch        :: !(Maybe Word64)
    , _opUserIp                   :: !(Maybe Text)
    , _opBucket                   :: !Text
    , _opKey                      :: !(Maybe Text)
    , _opIfMetagenerationNotMatch :: !(Maybe Word64)
    , _opObject                   :: !Text
    , _opProjection               :: !(Maybe Text)
    , _opOauthToken               :: !(Maybe Text)
    , _opGeneration               :: !(Maybe Word64)
    , _opFields                   :: !(Maybe Text)
    , _opAlt                      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opQuotaUser'
--
-- * 'opIfMetagenerationMatch'
--
-- * 'opIfGenerationNotMatch'
--
-- * 'opPrettyPrint'
--
-- * 'opIfGenerationMatch'
--
-- * 'opUserIp'
--
-- * 'opBucket'
--
-- * 'opKey'
--
-- * 'opIfMetagenerationNotMatch'
--
-- * 'opObject'
--
-- * 'opProjection'
--
-- * 'opOauthToken'
--
-- * 'opGeneration'
--
-- * 'opFields'
--
-- * 'opAlt'
objectsPatch
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectsPatch
objectsPatch pOpBucket_ pOpObject_ =
    ObjectsPatch
    { _opQuotaUser = Nothing
    , _opIfMetagenerationMatch = Nothing
    , _opIfGenerationNotMatch = Nothing
    , _opPrettyPrint = True
    , _opIfGenerationMatch = Nothing
    , _opUserIp = Nothing
    , _opBucket = pOpBucket_
    , _opKey = Nothing
    , _opIfMetagenerationNotMatch = Nothing
    , _opObject = pOpObject_
    , _opProjection = Nothing
    , _opOauthToken = Nothing
    , _opGeneration = Nothing
    , _opFields = Nothing
    , _opAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
opQuotaUser :: Lens' ObjectsPatch' (Maybe Text)
opQuotaUser
  = lens _opQuotaUser (\ s a -> s{_opQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
opIfMetagenerationMatch :: Lens' ObjectsPatch' (Maybe Word64)
opIfMetagenerationMatch
  = lens _opIfMetagenerationMatch
      (\ s a -> s{_opIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
opIfGenerationNotMatch :: Lens' ObjectsPatch' (Maybe Word64)
opIfGenerationNotMatch
  = lens _opIfGenerationNotMatch
      (\ s a -> s{_opIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
opPrettyPrint :: Lens' ObjectsPatch' Bool
opPrettyPrint
  = lens _opPrettyPrint
      (\ s a -> s{_opPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
opIfGenerationMatch :: Lens' ObjectsPatch' (Maybe Word64)
opIfGenerationMatch
  = lens _opIfGenerationMatch
      (\ s a -> s{_opIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
opUserIp :: Lens' ObjectsPatch' (Maybe Text)
opUserIp = lens _opUserIp (\ s a -> s{_opUserIp = a})

-- | Name of the bucket in which the object resides.
opBucket :: Lens' ObjectsPatch' Text
opBucket = lens _opBucket (\ s a -> s{_opBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
opKey :: Lens' ObjectsPatch' (Maybe Text)
opKey = lens _opKey (\ s a -> s{_opKey = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
opIfMetagenerationNotMatch :: Lens' ObjectsPatch' (Maybe Word64)
opIfMetagenerationNotMatch
  = lens _opIfMetagenerationNotMatch
      (\ s a -> s{_opIfMetagenerationNotMatch = a})

-- | Name of the object.
opObject :: Lens' ObjectsPatch' Text
opObject = lens _opObject (\ s a -> s{_opObject = a})

-- | Set of properties to return. Defaults to full.
opProjection :: Lens' ObjectsPatch' (Maybe Text)
opProjection
  = lens _opProjection (\ s a -> s{_opProjection = a})

-- | OAuth 2.0 token for the current user.
opOauthToken :: Lens' ObjectsPatch' (Maybe Text)
opOauthToken
  = lens _opOauthToken (\ s a -> s{_opOauthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
opGeneration :: Lens' ObjectsPatch' (Maybe Word64)
opGeneration
  = lens _opGeneration (\ s a -> s{_opGeneration = a})

-- | Selector specifying which fields to include in a partial response.
opFields :: Lens' ObjectsPatch' (Maybe Text)
opFields = lens _opFields (\ s a -> s{_opFields = a})

-- | Data format for the response.
opAlt :: Lens' ObjectsPatch' Text
opAlt = lens _opAlt (\ s a -> s{_opAlt = a})

instance GoogleRequest ObjectsPatch' where
        type Rs ObjectsPatch' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsPatch{..}
          = go _opQuotaUser _opIfMetagenerationMatch
              _opIfGenerationNotMatch
              _opPrettyPrint
              _opIfGenerationMatch
              _opUserIp
              _opBucket
              _opKey
              _opIfMetagenerationNotMatch
              _opObject
              _opProjection
              _opOauthToken
              _opGeneration
              _opFields
              _opAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ObjectsPatchAPI) r
                      u
