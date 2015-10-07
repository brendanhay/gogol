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
-- Module      : Network.Google.Resource.Storage.Objects.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an object\'s metadata. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectsPatch@.
module Network.Google.Resource.Storage.Objects.Patch
    (
    -- * REST Resource
      ObjectsPatchResource

    -- * Creating a Request
    , objectsPatch'
    , ObjectsPatch'

    -- * Request Lenses
    , opQuotaUser
    , opIfMetagenerationMatch
    , opIfGenerationNotMatch
    , opPrettyPrint
    , opIfGenerationMatch
    , opUserIP
    , opPredefinedACL
    , opBucket
    , opPayload
    , opKey
    , opIfMetagenerationNotMatch
    , opObject
    , opProjection
    , opOAuthToken
    , opGeneration
    , opFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsPatch@ method which the
-- 'ObjectsPatch'' request conforms to.
type ObjectsPatchResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "ifGenerationNotMatch" Int64 :>
                 QueryParam "ifGenerationMatch" Int64 :>
                   QueryParam "predefinedAcl" ObjectsPatchPredefinedACL
                     :>
                     QueryParam "ifMetagenerationNotMatch" Int64 :>
                       QueryParam "projection" ObjectsPatchProjection :>
                         QueryParam "generation" Int64 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] Object :>
                                           Patch '[JSON] Object

-- | Updates an object\'s metadata. This method supports patch semantics.
--
-- /See:/ 'objectsPatch'' smart constructor.
data ObjectsPatch' = ObjectsPatch'
    { _opQuotaUser                :: !(Maybe Text)
    , _opIfMetagenerationMatch    :: !(Maybe Int64)
    , _opIfGenerationNotMatch     :: !(Maybe Int64)
    , _opPrettyPrint              :: !Bool
    , _opIfGenerationMatch        :: !(Maybe Int64)
    , _opUserIP                   :: !(Maybe Text)
    , _opPredefinedACL            :: !(Maybe ObjectsPatchPredefinedACL)
    , _opBucket                   :: !Text
    , _opPayload                  :: !Object
    , _opKey                      :: !(Maybe AuthKey)
    , _opIfMetagenerationNotMatch :: !(Maybe Int64)
    , _opObject                   :: !Text
    , _opProjection               :: !(Maybe ObjectsPatchProjection)
    , _opOAuthToken               :: !(Maybe OAuthToken)
    , _opGeneration               :: !(Maybe Int64)
    , _opFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'opUserIP'
--
-- * 'opPredefinedACL'
--
-- * 'opBucket'
--
-- * 'opPayload'
--
-- * 'opKey'
--
-- * 'opIfMetagenerationNotMatch'
--
-- * 'opObject'
--
-- * 'opProjection'
--
-- * 'opOAuthToken'
--
-- * 'opGeneration'
--
-- * 'opFields'
objectsPatch'
    :: Text -- ^ 'bucket'
    -> Object -- ^ 'payload'
    -> Text -- ^ 'object'
    -> ObjectsPatch'
objectsPatch' pOpBucket_ pOpPayload_ pOpObject_ =
    ObjectsPatch'
    { _opQuotaUser = Nothing
    , _opIfMetagenerationMatch = Nothing
    , _opIfGenerationNotMatch = Nothing
    , _opPrettyPrint = True
    , _opIfGenerationMatch = Nothing
    , _opUserIP = Nothing
    , _opPredefinedACL = Nothing
    , _opBucket = pOpBucket_
    , _opPayload = pOpPayload_
    , _opKey = Nothing
    , _opIfMetagenerationNotMatch = Nothing
    , _opObject = pOpObject_
    , _opProjection = Nothing
    , _opOAuthToken = Nothing
    , _opGeneration = Nothing
    , _opFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
opQuotaUser :: Lens' ObjectsPatch' (Maybe Text)
opQuotaUser
  = lens _opQuotaUser (\ s a -> s{_opQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
opIfMetagenerationMatch :: Lens' ObjectsPatch' (Maybe Int64)
opIfMetagenerationMatch
  = lens _opIfMetagenerationMatch
      (\ s a -> s{_opIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
opIfGenerationNotMatch :: Lens' ObjectsPatch' (Maybe Int64)
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
opIfGenerationMatch :: Lens' ObjectsPatch' (Maybe Int64)
opIfGenerationMatch
  = lens _opIfGenerationMatch
      (\ s a -> s{_opIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
opUserIP :: Lens' ObjectsPatch' (Maybe Text)
opUserIP = lens _opUserIP (\ s a -> s{_opUserIP = a})

-- | Apply a predefined set of access controls to this object.
opPredefinedACL :: Lens' ObjectsPatch' (Maybe ObjectsPatchPredefinedACL)
opPredefinedACL
  = lens _opPredefinedACL
      (\ s a -> s{_opPredefinedACL = a})

-- | Name of the bucket in which the object resides.
opBucket :: Lens' ObjectsPatch' Text
opBucket = lens _opBucket (\ s a -> s{_opBucket = a})

-- | Multipart request metadata.
opPayload :: Lens' ObjectsPatch' Object
opPayload
  = lens _opPayload (\ s a -> s{_opPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
opKey :: Lens' ObjectsPatch' (Maybe AuthKey)
opKey = lens _opKey (\ s a -> s{_opKey = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
opIfMetagenerationNotMatch :: Lens' ObjectsPatch' (Maybe Int64)
opIfMetagenerationNotMatch
  = lens _opIfMetagenerationNotMatch
      (\ s a -> s{_opIfMetagenerationNotMatch = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
opObject :: Lens' ObjectsPatch' Text
opObject = lens _opObject (\ s a -> s{_opObject = a})

-- | Set of properties to return. Defaults to full.
opProjection :: Lens' ObjectsPatch' (Maybe ObjectsPatchProjection)
opProjection
  = lens _opProjection (\ s a -> s{_opProjection = a})

-- | OAuth 2.0 token for the current user.
opOAuthToken :: Lens' ObjectsPatch' (Maybe OAuthToken)
opOAuthToken
  = lens _opOAuthToken (\ s a -> s{_opOAuthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
opGeneration :: Lens' ObjectsPatch' (Maybe Int64)
opGeneration
  = lens _opGeneration (\ s a -> s{_opGeneration = a})

-- | Selector specifying which fields to include in a partial response.
opFields :: Lens' ObjectsPatch' (Maybe Text)
opFields = lens _opFields (\ s a -> s{_opFields = a})

instance GoogleAuth ObjectsPatch' where
        _AuthKey = opKey . _Just
        _AuthToken = opOAuthToken . _Just

instance GoogleRequest ObjectsPatch' where
        type Rs ObjectsPatch' = Object
        request = requestWith storageRequest
        requestWith rq ObjectsPatch'{..}
          = go _opBucket _opObject _opIfMetagenerationMatch
              _opIfGenerationNotMatch
              _opIfGenerationMatch
              _opPredefinedACL
              _opIfMetagenerationNotMatch
              _opProjection
              _opGeneration
              _opQuotaUser
              (Just _opPrettyPrint)
              _opUserIP
              _opFields
              _opKey
              _opOAuthToken
              (Just AltJSON)
              _opPayload
          where go
                  = clientBuild (Proxy :: Proxy ObjectsPatchResource)
                      rq
