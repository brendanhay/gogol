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
-- Module      : Network.Google.Resource.Storage.Objects.Compose
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsCompose@.
module Network.Google.Resource.Storage.Objects.Compose
    (
    -- * REST Resource
      ObjectsComposeResource

    -- * Creating a Request
    , objectsCompose'
    , ObjectsCompose'

    -- * Request Lenses
    , oQuotaUser
    , oIfMetagenerationMatch
    , oPrettyPrint
    , oIfGenerationMatch
    , oUserIP
    , oPayload
    , oKey
    , oDestinationBucket
    , oOAuthToken
    , oFields
    , oDestinationObject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsCompose@ which the
-- 'ObjectsCompose'' request conforms to.
type ObjectsComposeResource =
     "b" :>
       Capture "destinationBucket" Text :>
         "o" :>
           Capture "destinationObject" Text :>
             "compose" :>
               QueryParam "ifMetagenerationMatch" Word64 :>
                 QueryParam "ifGenerationMatch" Word64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ComposeRequest :>
                                   Post '[JSON] Object
       :<|>
       "b" :>
         Capture "destinationBucket" Text :>
           "o" :>
             Capture "destinationObject" Text :>
               "compose" :>
                 QueryParam "ifMetagenerationMatch" Word64 :>
                   QueryParam "ifGenerationMatch" Word64 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltMedia :>
                                   ReqBody '[JSON] ComposeRequest :>
                                     Post '[OctetStream] Body

-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
--
-- /See:/ 'objectsCompose'' smart constructor.
data ObjectsCompose' = ObjectsCompose'
    { _oQuotaUser             :: !(Maybe Text)
    , _oIfMetagenerationMatch :: !(Maybe Word64)
    , _oPrettyPrint           :: !Bool
    , _oIfGenerationMatch     :: !(Maybe Word64)
    , _oUserIP                :: !(Maybe Text)
    , _oPayload               :: !ComposeRequest
    , _oKey                   :: !(Maybe Key)
    , _oDestinationBucket     :: !Text
    , _oOAuthToken            :: !(Maybe OAuthToken)
    , _oFields                :: !(Maybe Text)
    , _oDestinationObject     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsCompose'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oIfMetagenerationMatch'
--
-- * 'oPrettyPrint'
--
-- * 'oIfGenerationMatch'
--
-- * 'oUserIP'
--
-- * 'oPayload'
--
-- * 'oKey'
--
-- * 'oDestinationBucket'
--
-- * 'oOAuthToken'
--
-- * 'oFields'
--
-- * 'oDestinationObject'
objectsCompose'
    :: ComposeRequest -- ^ 'payload'
    -> Text -- ^ 'destinationBucket'
    -> Text -- ^ 'destinationObject'
    -> ObjectsCompose'
objectsCompose' pOPayload_ pODestinationBucket_ pODestinationObject_ =
    ObjectsCompose'
    { _oQuotaUser = Nothing
    , _oIfMetagenerationMatch = Nothing
    , _oPrettyPrint = True
    , _oIfGenerationMatch = Nothing
    , _oUserIP = Nothing
    , _oPayload = pOPayload_
    , _oKey = Nothing
    , _oDestinationBucket = pODestinationBucket_
    , _oOAuthToken = Nothing
    , _oFields = Nothing
    , _oDestinationObject = pODestinationObject_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' ObjectsCompose' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
oIfMetagenerationMatch :: Lens' ObjectsCompose' (Maybe Word64)
oIfMetagenerationMatch
  = lens _oIfMetagenerationMatch
      (\ s a -> s{_oIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' ObjectsCompose' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s current
-- generation matches the given value.
oIfGenerationMatch :: Lens' ObjectsCompose' (Maybe Word64)
oIfGenerationMatch
  = lens _oIfGenerationMatch
      (\ s a -> s{_oIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIP :: Lens' ObjectsCompose' (Maybe Text)
oUserIP = lens _oUserIP (\ s a -> s{_oUserIP = a})

-- | Multipart request metadata.
oPayload :: Lens' ObjectsCompose' ComposeRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' ObjectsCompose' (Maybe Key)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | Name of the bucket in which to store the new object.
oDestinationBucket :: Lens' ObjectsCompose' Text
oDestinationBucket
  = lens _oDestinationBucket
      (\ s a -> s{_oDestinationBucket = a})

-- | OAuth 2.0 token for the current user.
oOAuthToken :: Lens' ObjectsCompose' (Maybe OAuthToken)
oOAuthToken
  = lens _oOAuthToken (\ s a -> s{_oOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' ObjectsCompose' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Name of the new object.
oDestinationObject :: Lens' ObjectsCompose' Text
oDestinationObject
  = lens _oDestinationObject
      (\ s a -> s{_oDestinationObject = a})

instance GoogleAuth ObjectsCompose' where
        authKey = oKey . _Just
        authToken = oOAuthToken . _Just

instance GoogleRequest ObjectsCompose' where
        type Rs ObjectsCompose' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsCompose'{..}
          = go _oDestinationBucket _oDestinationObject
              _oIfMetagenerationMatch
              _oIfGenerationMatch
              _oQuotaUser
              (Just _oPrettyPrint)
              _oUserIP
              _oFields
              _oKey
              _oOAuthToken
              (Just AltJSON)
              _oPayload
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsComposeResource)
                      r
                      u

instance GoogleRequest
         (MediaDownload ObjectsCompose') where
        type Rs (MediaDownload ObjectsCompose') = Body
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          (MediaDownload ObjectsCompose'{..})
          = go _oDestinationBucket _oDestinationObject
              _oIfMetagenerationMatch
              _oIfGenerationMatch
              _oQuotaUser
              (Just _oPrettyPrint)
              _oUserIP
              _oFields
              _oKey
              _oOAuthToken
              (Just AltMedia)
              _oPayload
          where _ :<|> go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsComposeResource)
                      r
                      u
