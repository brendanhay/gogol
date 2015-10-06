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
-- Module      : Network.Google.Resource.Storage.Objects.Copy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Copies an object to a destination in the same location. Optionally
-- overrides metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsCopy@.
module Network.Google.Resource.Storage.Objects.Copy
    (
    -- * REST Resource
      ObjectsCopyResource

    -- * Creating a Request
    , objectsCopy'
    , ObjectsCopy'

    -- * Request Lenses
    , ocQuotaUser
    , ocIfSourceGenerationMatch
    , ocIfMetagenerationMatch
    , ocIfGenerationNotMatch
    , ocPrettyPrint
    , ocIfSourceMetagenerationNotMatch
    , ocIfSourceMetagenerationMatch
    , ocIfGenerationMatch
    , ocUserIP
    , ocSourceObject
    , ocSourceBucket
    , ocPayload
    , ocKey
    , ocDestinationBucket
    , ocIfMetagenerationNotMatch
    , ocIfSourceGenerationNotMatch
    , ocProjection
    , ocOAuthToken
    , ocSourceGeneration
    , ocFields
    , ocDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsCopy@ which the
-- 'ObjectsCopy'' request conforms to.
type ObjectsCopyResource =
     "b" :>
       Capture "sourceBucket" Text :>
         "o" :>
           Capture "sourceObject" Text :>
             "copyTo" :>
               "b" :>
                 Capture "destinationBucket" Text :>
                   "o" :>
                     Capture "destinationObject" Text :>
                       QueryParam "ifSourceGenerationMatch" Word64 :>
                         QueryParam "ifMetagenerationMatch" Word64 :>
                           QueryParam "ifGenerationNotMatch" Word64 :>
                             QueryParam "ifSourceMetagenerationNotMatch" Word64
                               :>
                               QueryParam "ifSourceMetagenerationMatch" Word64
                                 :>
                                 QueryParam "ifGenerationMatch" Word64 :>
                                   QueryParam "ifMetagenerationNotMatch" Word64
                                     :>
                                     QueryParam "ifSourceGenerationNotMatch"
                                       Word64
                                       :>
                                       QueryParam "projection"
                                         ObjectsCopyProjection
                                         :>
                                         QueryParam "sourceGeneration" Word64 :>
                                           QueryParam "quotaUser" Text :>
                                             QueryParam "prettyPrint" Bool :>
                                               QueryParam "userIp" Text :>
                                                 QueryParam "fields" Text :>
                                                   QueryParam "key" AuthKey :>
                                                     QueryParam "oauth_token"
                                                       OAuthToken
                                                       :>
                                                       QueryParam "alt" AltJSON
                                                         :>
                                                         ReqBody '[JSON] Object
                                                           :>
                                                           Post '[JSON] Object
       :<|>
       "b" :>
         Capture "sourceBucket" Text :>
           "o" :>
             Capture "sourceObject" Text :>
               "copyTo" :>
                 "b" :>
                   Capture "destinationBucket" Text :>
                     "o" :>
                       Capture "destinationObject" Text :>
                         QueryParam "ifSourceGenerationMatch" Word64 :>
                           QueryParam "ifMetagenerationMatch" Word64 :>
                             QueryParam "ifGenerationNotMatch" Word64 :>
                               QueryParam "ifSourceMetagenerationNotMatch"
                                 Word64
                                 :>
                                 QueryParam "ifSourceMetagenerationMatch" Word64
                                   :>
                                   QueryParam "ifGenerationMatch" Word64 :>
                                     QueryParam "ifMetagenerationNotMatch"
                                       Word64
                                       :>
                                       QueryParam "ifSourceGenerationNotMatch"
                                         Word64
                                         :>
                                         QueryParam "projection"
                                           ObjectsCopyProjection
                                           :>
                                           QueryParam "sourceGeneration" Word64
                                             :>
                                             QueryParam "quotaUser" Text :>
                                               QueryParam "prettyPrint" Bool :>
                                                 QueryParam "userIp" Text :>
                                                   QueryParam "fields" Text :>
                                                     QueryParam "key" AuthKey :>
                                                       QueryParam "oauth_token"
                                                         OAuthToken
                                                         :>
                                                         QueryParam "alt"
                                                           AltMedia
                                                           :>
                                                           ReqBody '[JSON]
                                                             Object
                                                             :>
                                                             Post '[OctetStream]
                                                               Stream

-- | Copies an object to a destination in the same location. Optionally
-- overrides metadata.
--
-- /See:/ 'objectsCopy'' smart constructor.
data ObjectsCopy' = ObjectsCopy'
    { _ocQuotaUser                      :: !(Maybe Text)
    , _ocIfSourceGenerationMatch        :: !(Maybe Word64)
    , _ocIfMetagenerationMatch          :: !(Maybe Word64)
    , _ocIfGenerationNotMatch           :: !(Maybe Word64)
    , _ocPrettyPrint                    :: !Bool
    , _ocIfSourceMetagenerationNotMatch :: !(Maybe Word64)
    , _ocIfSourceMetagenerationMatch    :: !(Maybe Word64)
    , _ocIfGenerationMatch              :: !(Maybe Word64)
    , _ocUserIP                         :: !(Maybe Text)
    , _ocSourceObject                   :: !Text
    , _ocSourceBucket                   :: !Text
    , _ocPayload                        :: !Object
    , _ocKey                            :: !(Maybe AuthKey)
    , _ocDestinationBucket              :: !Text
    , _ocIfMetagenerationNotMatch       :: !(Maybe Word64)
    , _ocIfSourceGenerationNotMatch     :: !(Maybe Word64)
    , _ocProjection                     :: !(Maybe ObjectsCopyProjection)
    , _ocOAuthToken                     :: !(Maybe OAuthToken)
    , _ocSourceGeneration               :: !(Maybe Word64)
    , _ocFields                         :: !(Maybe Text)
    , _ocDestinationObject              :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsCopy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuotaUser'
--
-- * 'ocIfSourceGenerationMatch'
--
-- * 'ocIfMetagenerationMatch'
--
-- * 'ocIfGenerationNotMatch'
--
-- * 'ocPrettyPrint'
--
-- * 'ocIfSourceMetagenerationNotMatch'
--
-- * 'ocIfSourceMetagenerationMatch'
--
-- * 'ocIfGenerationMatch'
--
-- * 'ocUserIP'
--
-- * 'ocSourceObject'
--
-- * 'ocSourceBucket'
--
-- * 'ocPayload'
--
-- * 'ocKey'
--
-- * 'ocDestinationBucket'
--
-- * 'ocIfMetagenerationNotMatch'
--
-- * 'ocIfSourceGenerationNotMatch'
--
-- * 'ocProjection'
--
-- * 'ocOAuthToken'
--
-- * 'ocSourceGeneration'
--
-- * 'ocFields'
--
-- * 'ocDestinationObject'
objectsCopy'
    :: Text -- ^ 'sourceObject'
    -> Text -- ^ 'sourceBucket'
    -> Object -- ^ 'payload'
    -> Text -- ^ 'destinationBucket'
    -> Text -- ^ 'destinationObject'
    -> ObjectsCopy'
objectsCopy' pOcSourceObject_ pOcSourceBucket_ pOcPayload_ pOcDestinationBucket_ pOcDestinationObject_ =
    ObjectsCopy'
    { _ocQuotaUser = Nothing
    , _ocIfSourceGenerationMatch = Nothing
    , _ocIfMetagenerationMatch = Nothing
    , _ocIfGenerationNotMatch = Nothing
    , _ocPrettyPrint = True
    , _ocIfSourceMetagenerationNotMatch = Nothing
    , _ocIfSourceMetagenerationMatch = Nothing
    , _ocIfGenerationMatch = Nothing
    , _ocUserIP = Nothing
    , _ocSourceObject = pOcSourceObject_
    , _ocSourceBucket = pOcSourceBucket_
    , _ocPayload = pOcPayload_
    , _ocKey = Nothing
    , _ocDestinationBucket = pOcDestinationBucket_
    , _ocIfMetagenerationNotMatch = Nothing
    , _ocIfSourceGenerationNotMatch = Nothing
    , _ocProjection = Nothing
    , _ocOAuthToken = Nothing
    , _ocSourceGeneration = Nothing
    , _ocFields = Nothing
    , _ocDestinationObject = pOcDestinationObject_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ocQuotaUser :: Lens' ObjectsCopy' (Maybe Text)
ocQuotaUser
  = lens _ocQuotaUser (\ s a -> s{_ocQuotaUser = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation matches the given value.
ocIfSourceGenerationMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfSourceGenerationMatch
  = lens _ocIfSourceGenerationMatch
      (\ s a -> s{_ocIfSourceGenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration matches the given value.
ocIfMetagenerationMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfMetagenerationMatch
  = lens _ocIfMetagenerationMatch
      (\ s a -> s{_ocIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation does not match the given value.
ocIfGenerationNotMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfGenerationNotMatch
  = lens _ocIfGenerationNotMatch
      (\ s a -> s{_ocIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
ocPrettyPrint :: Lens' ObjectsCopy' Bool
ocPrettyPrint
  = lens _ocPrettyPrint
      (\ s a -> s{_ocPrettyPrint = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration does not match the given value.
ocIfSourceMetagenerationNotMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfSourceMetagenerationNotMatch
  = lens _ocIfSourceMetagenerationNotMatch
      (\ s a -> s{_ocIfSourceMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s current
-- metageneration matches the given value.
ocIfSourceMetagenerationMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfSourceMetagenerationMatch
  = lens _ocIfSourceMetagenerationMatch
      (\ s a -> s{_ocIfSourceMetagenerationMatch = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current generation matches the given value.
ocIfGenerationMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfGenerationMatch
  = lens _ocIfGenerationMatch
      (\ s a -> s{_ocIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ocUserIP :: Lens' ObjectsCopy' (Maybe Text)
ocUserIP = lens _ocUserIP (\ s a -> s{_ocUserIP = a})

-- | Name of the source object.
ocSourceObject :: Lens' ObjectsCopy' Text
ocSourceObject
  = lens _ocSourceObject
      (\ s a -> s{_ocSourceObject = a})

-- | Name of the bucket in which to find the source object.
ocSourceBucket :: Lens' ObjectsCopy' Text
ocSourceBucket
  = lens _ocSourceBucket
      (\ s a -> s{_ocSourceBucket = a})

-- | Multipart request metadata.
ocPayload :: Lens' ObjectsCopy' Object
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ocKey :: Lens' ObjectsCopy' (Maybe AuthKey)
ocKey = lens _ocKey (\ s a -> s{_ocKey = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
ocDestinationBucket :: Lens' ObjectsCopy' Text
ocDestinationBucket
  = lens _ocDestinationBucket
      (\ s a -> s{_ocDestinationBucket = a})

-- | Makes the operation conditional on whether the destination object\'s
-- current metageneration does not match the given value.
ocIfMetagenerationNotMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfMetagenerationNotMatch
  = lens _ocIfMetagenerationNotMatch
      (\ s a -> s{_ocIfMetagenerationNotMatch = a})

-- | Makes the operation conditional on whether the source object\'s
-- generation does not match the given value.
ocIfSourceGenerationNotMatch :: Lens' ObjectsCopy' (Maybe Word64)
ocIfSourceGenerationNotMatch
  = lens _ocIfSourceGenerationNotMatch
      (\ s a -> s{_ocIfSourceGenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
ocProjection :: Lens' ObjectsCopy' (Maybe ObjectsCopyProjection)
ocProjection
  = lens _ocProjection (\ s a -> s{_ocProjection = a})

-- | OAuth 2.0 token for the current user.
ocOAuthToken :: Lens' ObjectsCopy' (Maybe OAuthToken)
ocOAuthToken
  = lens _ocOAuthToken (\ s a -> s{_ocOAuthToken = a})

-- | If present, selects a specific revision of the source object (as opposed
-- to the latest version, the default).
ocSourceGeneration :: Lens' ObjectsCopy' (Maybe Word64)
ocSourceGeneration
  = lens _ocSourceGeneration
      (\ s a -> s{_ocSourceGeneration = a})

-- | Selector specifying which fields to include in a partial response.
ocFields :: Lens' ObjectsCopy' (Maybe Text)
ocFields = lens _ocFields (\ s a -> s{_ocFields = a})

-- | Name of the new object. Required when the object metadata is not
-- otherwise provided. Overrides the object metadata\'s name value, if any.
ocDestinationObject :: Lens' ObjectsCopy' Text
ocDestinationObject
  = lens _ocDestinationObject
      (\ s a -> s{_ocDestinationObject = a})

instance GoogleAuth ObjectsCopy' where
        authKey = ocKey . _Just
        authToken = ocOAuthToken . _Just

instance GoogleRequest ObjectsCopy' where
        type Rs ObjectsCopy' = Object
        request = requestWith storageRequest
        requestWith rq ObjectsCopy'{..}
          = go _ocSourceBucket _ocSourceObject
              _ocDestinationBucket
              _ocDestinationObject
              _ocIfSourceGenerationMatch
              _ocIfMetagenerationMatch
              _ocIfGenerationNotMatch
              _ocIfSourceMetagenerationNotMatch
              _ocIfSourceMetagenerationMatch
              _ocIfGenerationMatch
              _ocIfMetagenerationNotMatch
              _ocIfSourceGenerationNotMatch
              _ocProjection
              _ocSourceGeneration
              _ocQuotaUser
              (Just _ocPrettyPrint)
              _ocUserIP
              _ocFields
              _ocKey
              _ocOAuthToken
              (Just AltJSON)
              _ocPayload
          where go :<|> _
                  = clientBuild (Proxy :: Proxy ObjectsCopyResource) rq

instance GoogleRequest (MediaDownload ObjectsCopy')
         where
        type Rs (MediaDownload ObjectsCopy') = Stream
        request = requestWith storageRequest
        requestWith rq (MediaDownload ObjectsCopy'{..})
          = go _ocSourceBucket _ocSourceObject
              _ocDestinationBucket
              _ocDestinationObject
              _ocIfSourceGenerationMatch
              _ocIfMetagenerationMatch
              _ocIfGenerationNotMatch
              _ocIfSourceMetagenerationNotMatch
              _ocIfSourceMetagenerationMatch
              _ocIfGenerationMatch
              _ocIfMetagenerationNotMatch
              _ocIfSourceGenerationNotMatch
              _ocProjection
              _ocSourceGeneration
              _ocQuotaUser
              (Just _ocPrettyPrint)
              _ocUserIP
              _ocFields
              _ocKey
              _ocOAuthToken
              (Just AltMedia)
              _ocPayload
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy ObjectsCopyResource) rq
