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
-- Module      : Network.Google.Resource.Storage.Objects.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stores a new object and metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectsInsert@.
module Network.Google.Resource.Storage.Objects.Insert
    (
    -- * REST Resource
      ObjectsInsertResource

    -- * Creating a Request
    , objectsInsert'
    , ObjectsInsert'

    -- * Request Lenses
    , oiQuotaUser
    , oiIfMetagenerationMatch
    , oiIfGenerationNotMatch
    , oiPrettyPrint
    , oiIfGenerationMatch
    , oiUserIP
    , oiPredefinedACL
    , oiBucket
    , oiPayload
    , oiMedia
    , oiKey
    , oiName
    , oiIfMetagenerationNotMatch
    , oiContentEncoding
    , oiProjection
    , oiOAuthToken
    , oiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsInsert@ method which the
-- 'ObjectsInsert'' request conforms to.
type ObjectsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           QueryParam "ifMetagenerationMatch" Int64 :>
             QueryParam "ifGenerationNotMatch" Int64 :>
               QueryParam "ifGenerationMatch" Int64 :>
                 QueryParam "predefinedAcl" ObjectsInsertPredefinedACL
                   :>
                   QueryParam "name" Text :>
                     QueryParam "ifMetagenerationNotMatch" Int64 :>
                       QueryParam "contentEncoding" Text :>
                         QueryParam "projection" ObjectsInsertProjection :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         MultipartRelated '[JSON] Object Stream
                                           :> Post '[JSON] Object
       :<|>
       "b" :>
         Capture "bucket" Text :>
           "o" :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "ifGenerationNotMatch" Int64 :>
                 QueryParam "ifGenerationMatch" Int64 :>
                   QueryParam "predefinedAcl" ObjectsInsertPredefinedACL
                     :>
                     QueryParam "name" Text :>
                       QueryParam "ifMetagenerationNotMatch" Int64 :>
                         QueryParam "contentEncoding" Text :>
                           QueryParam "projection" ObjectsInsertProjection :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltMedia :>
                                           MultipartRelated '[JSON] Object
                                             Stream
                                             :> Post '[OctetStream] Stream

-- | Stores a new object and metadata.
--
-- /See:/ 'objectsInsert'' smart constructor.
data ObjectsInsert' = ObjectsInsert'
    { _oiQuotaUser                :: !(Maybe Text)
    , _oiIfMetagenerationMatch    :: !(Maybe Int64)
    , _oiIfGenerationNotMatch     :: !(Maybe Int64)
    , _oiPrettyPrint              :: !Bool
    , _oiIfGenerationMatch        :: !(Maybe Int64)
    , _oiUserIP                   :: !(Maybe Text)
    , _oiPredefinedACL            :: !(Maybe ObjectsInsertPredefinedACL)
    , _oiBucket                   :: !Text
    , _oiPayload                  :: !Object
    , _oiMedia                    :: !Stream
    , _oiKey                      :: !(Maybe AuthKey)
    , _oiName                     :: !(Maybe Text)
    , _oiIfMetagenerationNotMatch :: !(Maybe Int64)
    , _oiContentEncoding          :: !(Maybe Text)
    , _oiProjection               :: !(Maybe ObjectsInsertProjection)
    , _oiOAuthToken               :: !(Maybe OAuthToken)
    , _oiFields                   :: !(Maybe Text)
    }

-- | Creates a value of 'ObjectsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiQuotaUser'
--
-- * 'oiIfMetagenerationMatch'
--
-- * 'oiIfGenerationNotMatch'
--
-- * 'oiPrettyPrint'
--
-- * 'oiIfGenerationMatch'
--
-- * 'oiUserIP'
--
-- * 'oiPredefinedACL'
--
-- * 'oiBucket'
--
-- * 'oiPayload'
--
-- * 'oiMedia'
--
-- * 'oiKey'
--
-- * 'oiName'
--
-- * 'oiIfMetagenerationNotMatch'
--
-- * 'oiContentEncoding'
--
-- * 'oiProjection'
--
-- * 'oiOAuthToken'
--
-- * 'oiFields'
objectsInsert'
    :: Text -- ^ 'bucket'
    -> Object -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> ObjectsInsert'
objectsInsert' pOiBucket_ pOiPayload_ pOiMedia_ =
    ObjectsInsert'
    { _oiQuotaUser = Nothing
    , _oiIfMetagenerationMatch = Nothing
    , _oiIfGenerationNotMatch = Nothing
    , _oiPrettyPrint = True
    , _oiIfGenerationMatch = Nothing
    , _oiUserIP = Nothing
    , _oiPredefinedACL = Nothing
    , _oiBucket = pOiBucket_
    , _oiPayload = pOiPayload_
    , _oiMedia = pOiMedia_
    , _oiKey = Nothing
    , _oiName = Nothing
    , _oiIfMetagenerationNotMatch = Nothing
    , _oiContentEncoding = Nothing
    , _oiProjection = Nothing
    , _oiOAuthToken = Nothing
    , _oiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oiQuotaUser :: Lens' ObjectsInsert' (Maybe Text)
oiQuotaUser
  = lens _oiQuotaUser (\ s a -> s{_oiQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oiIfMetagenerationMatch :: Lens' ObjectsInsert' (Maybe Int64)
oiIfMetagenerationMatch
  = lens _oiIfMetagenerationMatch
      (\ s a -> s{_oiIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
oiIfGenerationNotMatch :: Lens' ObjectsInsert' (Maybe Int64)
oiIfGenerationNotMatch
  = lens _oiIfGenerationNotMatch
      (\ s a -> s{_oiIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
oiPrettyPrint :: Lens' ObjectsInsert' Bool
oiPrettyPrint
  = lens _oiPrettyPrint
      (\ s a -> s{_oiPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
oiIfGenerationMatch :: Lens' ObjectsInsert' (Maybe Int64)
oiIfGenerationMatch
  = lens _oiIfGenerationMatch
      (\ s a -> s{_oiIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oiUserIP :: Lens' ObjectsInsert' (Maybe Text)
oiUserIP = lens _oiUserIP (\ s a -> s{_oiUserIP = a})

-- | Apply a predefined set of access controls to this object.
oiPredefinedACL :: Lens' ObjectsInsert' (Maybe ObjectsInsertPredefinedACL)
oiPredefinedACL
  = lens _oiPredefinedACL
      (\ s a -> s{_oiPredefinedACL = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
oiBucket :: Lens' ObjectsInsert' Text
oiBucket = lens _oiBucket (\ s a -> s{_oiBucket = a})

-- | Multipart request metadata.
oiPayload :: Lens' ObjectsInsert' Object
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

oiMedia :: Lens' ObjectsInsert' Stream
oiMedia = lens _oiMedia (\ s a -> s{_oiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' ObjectsInsert' (Maybe AuthKey)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | Name of the object. Required when the object metadata is not otherwise
-- provided. Overrides the object metadata\'s name value, if any. For
-- information about how to URL encode object names to be path safe, see
-- Encoding URI Path Parts.
oiName :: Lens' ObjectsInsert' (Maybe Text)
oiName = lens _oiName (\ s a -> s{_oiName = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
oiIfMetagenerationNotMatch :: Lens' ObjectsInsert' (Maybe Int64)
oiIfMetagenerationNotMatch
  = lens _oiIfMetagenerationNotMatch
      (\ s a -> s{_oiIfMetagenerationNotMatch = a})

-- | If set, sets the contentEncoding property of the final object to this
-- value. Setting this parameter is equivalent to setting the
-- contentEncoding metadata property. This can be useful when uploading an
-- object with uploadType=media to indicate the encoding of the content
-- being uploaded.
oiContentEncoding :: Lens' ObjectsInsert' (Maybe Text)
oiContentEncoding
  = lens _oiContentEncoding
      (\ s a -> s{_oiContentEncoding = a})

-- | Set of properties to return. Defaults to noAcl, unless the object
-- resource specifies the acl property, when it defaults to full.
oiProjection :: Lens' ObjectsInsert' (Maybe ObjectsInsertProjection)
oiProjection
  = lens _oiProjection (\ s a -> s{_oiProjection = a})

-- | OAuth 2.0 token for the current user.
oiOAuthToken :: Lens' ObjectsInsert' (Maybe OAuthToken)
oiOAuthToken
  = lens _oiOAuthToken (\ s a -> s{_oiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oiFields :: Lens' ObjectsInsert' (Maybe Text)
oiFields = lens _oiFields (\ s a -> s{_oiFields = a})

instance GoogleAuth ObjectsInsert' where
        _AuthKey = oiKey . _Just
        _AuthToken = oiOAuthToken . _Just

instance GoogleRequest ObjectsInsert' where
        type Rs ObjectsInsert' = Object
        request = requestWith storageRequest
        requestWith rq ObjectsInsert'{..}
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiPredefinedACL
              _oiName
              _oiIfMetagenerationNotMatch
              _oiContentEncoding
              _oiProjection
              _oiQuotaUser
              (Just _oiPrettyPrint)
              _oiUserIP
              _oiFields
              _oiKey
              _oiOAuthToken
              (Just AltJSON)
              _oiPayload
              _oiMedia
          where go :<|> _
                  = clientBuild (Proxy :: Proxy ObjectsInsertResource)
                      rq

instance GoogleRequest (MediaDownload ObjectsInsert')
         where
        type Rs (MediaDownload ObjectsInsert') = Stream
        request = requestWith storageRequest
        requestWith rq (MediaDownload ObjectsInsert'{..})
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiPredefinedACL
              _oiName
              _oiIfMetagenerationNotMatch
              _oiContentEncoding
              _oiProjection
              _oiQuotaUser
              (Just _oiPrettyPrint)
              _oiUserIP
              _oiFields
              _oiKey
              _oiOAuthToken
              (Just AltMedia)
              _oiPayload
              _oiMedia
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy ObjectsInsertResource)
                      rq
