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
-- Module      : Network.Google.Resource.Storage.Objects.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an object\'s metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectsUpdate@.
module Network.Google.Resource.Storage.Objects.Update
    (
    -- * REST Resource
      ObjectsUpdateResource

    -- * Creating a Request
    , objectsUpdate'
    , ObjectsUpdate'

    -- * Request Lenses
    , ouQuotaUser
    , ouIfMetagenerationMatch
    , ouIfGenerationNotMatch
    , ouPrettyPrint
    , ouIfGenerationMatch
    , ouUserIP
    , ouPredefinedACL
    , ouBucket
    , ouPayload
    , ouKey
    , ouIfMetagenerationNotMatch
    , ouObject
    , ouProjection
    , ouOAuthToken
    , ouGeneration
    , ouFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsUpdate@ method which the
-- 'ObjectsUpdate'' request conforms to.
type ObjectsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "ifGenerationNotMatch" Int64 :>
                 QueryParam "ifGenerationMatch" Int64 :>
                   QueryParam "predefinedAcl" ObjectsUpdatePredefinedACL
                     :>
                     QueryParam "ifMetagenerationNotMatch" Int64 :>
                       QueryParam "projection" ObjectsUpdateProjection :>
                         QueryParam "generation" Int64 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] Object :>
                                           Put '[JSON] Object
       :<|>
       "b" :>
         Capture "bucket" Text :>
           "o" :>
             Capture "object" Text :>
               QueryParam "ifMetagenerationMatch" Int64 :>
                 QueryParam "ifGenerationNotMatch" Int64 :>
                   QueryParam "ifGenerationMatch" Int64 :>
                     QueryParam "predefinedAcl" ObjectsUpdatePredefinedACL
                       :>
                       QueryParam "ifMetagenerationNotMatch" Int64 :>
                         QueryParam "projection" ObjectsUpdateProjection :>
                           QueryParam "generation" Int64 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltMedia :>
                                           ReqBody '[JSON] Object :>
                                             Put '[OctetStream] Stream

-- | Updates an object\'s metadata.
--
-- /See:/ 'objectsUpdate'' smart constructor.
data ObjectsUpdate' = ObjectsUpdate'
    { _ouQuotaUser                :: !(Maybe Text)
    , _ouIfMetagenerationMatch    :: !(Maybe Int64)
    , _ouIfGenerationNotMatch     :: !(Maybe Int64)
    , _ouPrettyPrint              :: !Bool
    , _ouIfGenerationMatch        :: !(Maybe Int64)
    , _ouUserIP                   :: !(Maybe Text)
    , _ouPredefinedACL            :: !(Maybe ObjectsUpdatePredefinedACL)
    , _ouBucket                   :: !Text
    , _ouPayload                  :: !Object
    , _ouKey                      :: !(Maybe AuthKey)
    , _ouIfMetagenerationNotMatch :: !(Maybe Int64)
    , _ouObject                   :: !Text
    , _ouProjection               :: !(Maybe ObjectsUpdateProjection)
    , _ouOAuthToken               :: !(Maybe OAuthToken)
    , _ouGeneration               :: !(Maybe Int64)
    , _ouFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouQuotaUser'
--
-- * 'ouIfMetagenerationMatch'
--
-- * 'ouIfGenerationNotMatch'
--
-- * 'ouPrettyPrint'
--
-- * 'ouIfGenerationMatch'
--
-- * 'ouUserIP'
--
-- * 'ouPredefinedACL'
--
-- * 'ouBucket'
--
-- * 'ouPayload'
--
-- * 'ouKey'
--
-- * 'ouIfMetagenerationNotMatch'
--
-- * 'ouObject'
--
-- * 'ouProjection'
--
-- * 'ouOAuthToken'
--
-- * 'ouGeneration'
--
-- * 'ouFields'
objectsUpdate'
    :: Text -- ^ 'bucket'
    -> Object -- ^ 'payload'
    -> Text -- ^ 'object'
    -> ObjectsUpdate'
objectsUpdate' pOuBucket_ pOuPayload_ pOuObject_ =
    ObjectsUpdate'
    { _ouQuotaUser = Nothing
    , _ouIfMetagenerationMatch = Nothing
    , _ouIfGenerationNotMatch = Nothing
    , _ouPrettyPrint = True
    , _ouIfGenerationMatch = Nothing
    , _ouUserIP = Nothing
    , _ouPredefinedACL = Nothing
    , _ouBucket = pOuBucket_
    , _ouPayload = pOuPayload_
    , _ouKey = Nothing
    , _ouIfMetagenerationNotMatch = Nothing
    , _ouObject = pOuObject_
    , _ouProjection = Nothing
    , _ouOAuthToken = Nothing
    , _ouGeneration = Nothing
    , _ouFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouQuotaUser :: Lens' ObjectsUpdate' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
ouIfMetagenerationMatch :: Lens' ObjectsUpdate' (Maybe Int64)
ouIfMetagenerationMatch
  = lens _ouIfMetagenerationMatch
      (\ s a -> s{_ouIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
ouIfGenerationNotMatch :: Lens' ObjectsUpdate' (Maybe Int64)
ouIfGenerationNotMatch
  = lens _ouIfGenerationNotMatch
      (\ s a -> s{_ouIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' ObjectsUpdate' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
ouIfGenerationMatch :: Lens' ObjectsUpdate' (Maybe Int64)
ouIfGenerationMatch
  = lens _ouIfGenerationMatch
      (\ s a -> s{_ouIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouUserIP :: Lens' ObjectsUpdate' (Maybe Text)
ouUserIP = lens _ouUserIP (\ s a -> s{_ouUserIP = a})

-- | Apply a predefined set of access controls to this object.
ouPredefinedACL :: Lens' ObjectsUpdate' (Maybe ObjectsUpdatePredefinedACL)
ouPredefinedACL
  = lens _ouPredefinedACL
      (\ s a -> s{_ouPredefinedACL = a})

-- | Name of the bucket in which the object resides.
ouBucket :: Lens' ObjectsUpdate' Text
ouBucket = lens _ouBucket (\ s a -> s{_ouBucket = a})

-- | Multipart request metadata.
ouPayload :: Lens' ObjectsUpdate' Object
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' ObjectsUpdate' (Maybe AuthKey)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ouIfMetagenerationNotMatch :: Lens' ObjectsUpdate' (Maybe Int64)
ouIfMetagenerationNotMatch
  = lens _ouIfMetagenerationNotMatch
      (\ s a -> s{_ouIfMetagenerationNotMatch = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
ouObject :: Lens' ObjectsUpdate' Text
ouObject = lens _ouObject (\ s a -> s{_ouObject = a})

-- | Set of properties to return. Defaults to full.
ouProjection :: Lens' ObjectsUpdate' (Maybe ObjectsUpdateProjection)
ouProjection
  = lens _ouProjection (\ s a -> s{_ouProjection = a})

-- | OAuth 2.0 token for the current user.
ouOAuthToken :: Lens' ObjectsUpdate' (Maybe OAuthToken)
ouOAuthToken
  = lens _ouOAuthToken (\ s a -> s{_ouOAuthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ouGeneration :: Lens' ObjectsUpdate' (Maybe Int64)
ouGeneration
  = lens _ouGeneration (\ s a -> s{_ouGeneration = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' ObjectsUpdate' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

instance GoogleAuth ObjectsUpdate' where
        _AuthKey = ouKey . _Just
        _AuthToken = ouOAuthToken . _Just

instance GoogleRequest ObjectsUpdate' where
        type Rs ObjectsUpdate' = Object
        request = requestWith storageRequest
        requestWith rq ObjectsUpdate'{..}
          = go _ouBucket _ouObject _ouIfMetagenerationMatch
              _ouIfGenerationNotMatch
              _ouIfGenerationMatch
              _ouPredefinedACL
              _ouIfMetagenerationNotMatch
              _ouProjection
              _ouGeneration
              _ouQuotaUser
              (Just _ouPrettyPrint)
              _ouUserIP
              _ouFields
              _ouKey
              _ouOAuthToken
              (Just AltJSON)
              _ouPayload
          where go :<|> _
                  = clientBuild (Proxy :: Proxy ObjectsUpdateResource)
                      rq

instance GoogleRequest (MediaDownload ObjectsUpdate')
         where
        type Rs (MediaDownload ObjectsUpdate') = Stream
        request = requestWith storageRequest
        requestWith rq (MediaDownload ObjectsUpdate'{..})
          = go _ouBucket _ouObject _ouIfMetagenerationMatch
              _ouIfGenerationNotMatch
              _ouIfGenerationMatch
              _ouPredefinedACL
              _ouIfMetagenerationNotMatch
              _ouProjection
              _ouGeneration
              _ouQuotaUser
              (Just _ouPrettyPrint)
              _ouUserIP
              _ouFields
              _ouKey
              _ouOAuthToken
              (Just AltMedia)
              _ouPayload
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy ObjectsUpdateResource)
                      rq
