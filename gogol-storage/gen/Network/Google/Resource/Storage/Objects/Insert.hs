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
-- | Stores new data blobs and associated metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsInsert@.
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
    , oiBucket
    , oiPayload
    , oiMedia
    , oiKey
    , oiName
    , oiIfMetagenerationNotMatch
    , oiProjection
    , oiOAuthToken
    , oiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsInsert@ which the
-- 'ObjectsInsert'' request conforms to.
type ObjectsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           QueryParam "ifMetagenerationMatch" Word64 :>
             QueryParam "ifGenerationNotMatch" Word64 :>
               QueryParam "ifGenerationMatch" Word64 :>
                 QueryParam "name" Text :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" ObjectsInsertProjection :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     MultipartRelated '[JSON] Object Body :>
                                       Post '[JSON] Object
       :<|>
       "b" :>
         Capture "bucket" Text :>
           "o" :>
             QueryParam "ifMetagenerationMatch" Word64 :>
               QueryParam "ifGenerationNotMatch" Word64 :>
                 QueryParam "ifGenerationMatch" Word64 :>
                   QueryParam "name" Text :>
                     QueryParam "ifMetagenerationNotMatch" Word64 :>
                       QueryParam "projection" ObjectsInsertProjection :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltMedia :>
                                       MultipartRelated '[JSON] Object Body :>
                                         Post '[OctetStream] Body

-- | Stores new data blobs and associated metadata.
--
-- /See:/ 'objectsInsert'' smart constructor.
data ObjectsInsert' = ObjectsInsert'
    { _oiQuotaUser                :: !(Maybe Text)
    , _oiIfMetagenerationMatch    :: !(Maybe Word64)
    , _oiIfGenerationNotMatch     :: !(Maybe Word64)
    , _oiPrettyPrint              :: !Bool
    , _oiIfGenerationMatch        :: !(Maybe Word64)
    , _oiUserIP                   :: !(Maybe Text)
    , _oiBucket                   :: !Text
    , _oiPayload                  :: !Object
    , _oiMedia                    :: !Body
    , _oiKey                      :: !(Maybe Key)
    , _oiName                     :: !(Maybe Text)
    , _oiIfMetagenerationNotMatch :: !(Maybe Word64)
    , _oiProjection               :: !(Maybe ObjectsInsertProjection)
    , _oiOAuthToken               :: !(Maybe OAuthToken)
    , _oiFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'oiProjection'
--
-- * 'oiOAuthToken'
--
-- * 'oiFields'
objectsInsert'
    :: Text -- ^ 'bucket'
    -> Object -- ^ 'payload'
    -> Body -- ^ 'media'
    -> ObjectsInsert'
objectsInsert' pOiBucket_ pOiPayload_ pOiMedia_ =
    ObjectsInsert'
    { _oiQuotaUser = Nothing
    , _oiIfMetagenerationMatch = Nothing
    , _oiIfGenerationNotMatch = Nothing
    , _oiPrettyPrint = True
    , _oiIfGenerationMatch = Nothing
    , _oiUserIP = Nothing
    , _oiBucket = pOiBucket_
    , _oiPayload = pOiPayload_
    , _oiMedia = pOiMedia_
    , _oiKey = Nothing
    , _oiName = Nothing
    , _oiIfMetagenerationNotMatch = Nothing
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
oiIfMetagenerationMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfMetagenerationMatch
  = lens _oiIfMetagenerationMatch
      (\ s a -> s{_oiIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation does not match the given value.
oiIfGenerationNotMatch :: Lens' ObjectsInsert' (Maybe Word64)
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
oiIfGenerationMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfGenerationMatch
  = lens _oiIfGenerationMatch
      (\ s a -> s{_oiIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oiUserIP :: Lens' ObjectsInsert' (Maybe Text)
oiUserIP = lens _oiUserIP (\ s a -> s{_oiUserIP = a})

-- | Name of the bucket in which to store the new object. Overrides the
-- provided object metadata\'s bucket value, if any.
oiBucket :: Lens' ObjectsInsert' Text
oiBucket = lens _oiBucket (\ s a -> s{_oiBucket = a})

-- | Multipart request metadata.
oiPayload :: Lens' ObjectsInsert' Object
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

oiMedia :: Lens' ObjectsInsert' Body
oiMedia = lens _oiMedia (\ s a -> s{_oiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' ObjectsInsert' (Maybe Key)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | Name of the object. Required when the object metadata is not otherwise
-- provided. Overrides the object metadata\'s name value, if any.
oiName :: Lens' ObjectsInsert' (Maybe Text)
oiName = lens _oiName (\ s a -> s{_oiName = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
oiIfMetagenerationNotMatch :: Lens' ObjectsInsert' (Maybe Word64)
oiIfMetagenerationNotMatch
  = lens _oiIfMetagenerationNotMatch
      (\ s a -> s{_oiIfMetagenerationNotMatch = a})

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
        authKey = oiKey . _Just
        authToken = oiOAuthToken . _Just

instance GoogleRequest ObjectsInsert' where
        type Rs ObjectsInsert' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsInsert'{..}
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiName
              _oiIfMetagenerationNotMatch
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
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsInsertResource)
                      r
                      u

instance GoogleRequest (MediaDownload ObjectsInsert')
         where
        type Rs (MediaDownload ObjectsInsert') = Body
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          (MediaDownload ObjectsInsert'{..})
          = go _oiBucket _oiIfMetagenerationMatch
              _oiIfGenerationNotMatch
              _oiIfGenerationMatch
              _oiName
              _oiIfMetagenerationNotMatch
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
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsInsertResource)
                      r
                      u
