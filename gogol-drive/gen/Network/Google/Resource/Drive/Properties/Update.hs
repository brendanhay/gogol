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
-- Module      : Network.Google.Resource.Drive.Properties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesUpdate@.
module Network.Google.Resource.Drive.Properties.Update
    (
    -- * REST Resource
      PropertiesUpdateResource

    -- * Creating a Request
    , propertiesUpdate'
    , PropertiesUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puPropertyKey
    , puUserIP
    , puVisibility
    , puPayload
    , puKey
    , puFileId
    , puOAuthToken
    , puFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesUpdate@ which the
-- 'PropertiesUpdate'' request conforms to.
type PropertiesUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "visibility" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Property :> Put '[JSON] Property

-- | Updates a property.
--
-- /See:/ 'propertiesUpdate'' smart constructor.
data PropertiesUpdate' = PropertiesUpdate'
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puPropertyKey :: !Text
    , _puUserIP      :: !(Maybe Text)
    , _puVisibility  :: !Text
    , _puPayload     :: !Property
    , _puKey         :: !(Maybe Key)
    , _puFileId      :: !Text
    , _puOAuthToken  :: !(Maybe OAuthToken)
    , _puFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puPropertyKey'
--
-- * 'puUserIP'
--
-- * 'puVisibility'
--
-- * 'puPayload'
--
-- * 'puKey'
--
-- * 'puFileId'
--
-- * 'puOAuthToken'
--
-- * 'puFields'
propertiesUpdate'
    :: Text -- ^ 'propertyKey'
    -> Property -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> PropertiesUpdate'
propertiesUpdate' pPuPropertyKey_ pPuPayload_ pPuFileId_ =
    PropertiesUpdate'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puPropertyKey = pPuPropertyKey_
    , _puUserIP = Nothing
    , _puVisibility = "private"
    , _puPayload = pPuPayload_
    , _puKey = Nothing
    , _puFileId = pPuFileId_
    , _puOAuthToken = Nothing
    , _puFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PropertiesUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PropertiesUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | The key of the property.
puPropertyKey :: Lens' PropertiesUpdate' Text
puPropertyKey
  = lens _puPropertyKey
      (\ s a -> s{_puPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PropertiesUpdate' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | The visibility of the property.
puVisibility :: Lens' PropertiesUpdate' Text
puVisibility
  = lens _puVisibility (\ s a -> s{_puVisibility = a})

-- | Multipart request metadata.
puPayload :: Lens' PropertiesUpdate' Property
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PropertiesUpdate' (Maybe Key)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | The ID of the file.
puFileId :: Lens' PropertiesUpdate' Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PropertiesUpdate' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PropertiesUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PropertiesUpdate' where
        authKey = puKey . _Just
        authToken = puOAuthToken . _Just

instance GoogleRequest PropertiesUpdate' where
        type Rs PropertiesUpdate' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesUpdate'{..}
          = go _puFileId _puPropertyKey (Just _puVisibility)
              _puQuotaUser
              (Just _puPrettyPrint)
              _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
              _puPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesUpdateResource)
                      r
                      u
