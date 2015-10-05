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
-- Module      : Network.Google.Resource.Drive.Properties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesPatch@.
module Network.Google.Resource.Drive.Properties.Patch
    (
    -- * REST Resource
      PropertiesPatchResource

    -- * Creating a Request
    , propertiesPatch'
    , PropertiesPatch'

    -- * Request Lenses
    , ppQuotaUser
    , ppPrettyPrint
    , ppPropertyKey
    , ppUserIP
    , ppVisibility
    , ppPayload
    , ppKey
    , ppFileId
    , ppOAuthToken
    , ppFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesPatch@ which the
-- 'PropertiesPatch'' request conforms to.
type PropertiesPatchResource =
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
                             ReqBody '[JSON] Property :> Patch '[JSON] Property

-- | Updates a property. This method supports patch semantics.
--
-- /See:/ 'propertiesPatch'' smart constructor.
data PropertiesPatch' = PropertiesPatch'
    { _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppPropertyKey :: !Text
    , _ppUserIP      :: !(Maybe Text)
    , _ppVisibility  :: !Text
    , _ppPayload     :: !Property
    , _ppKey         :: !(Maybe Key)
    , _ppFileId      :: !Text
    , _ppOAuthToken  :: !(Maybe OAuthToken)
    , _ppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppPropertyKey'
--
-- * 'ppUserIP'
--
-- * 'ppVisibility'
--
-- * 'ppPayload'
--
-- * 'ppKey'
--
-- * 'ppFileId'
--
-- * 'ppOAuthToken'
--
-- * 'ppFields'
propertiesPatch'
    :: Text -- ^ 'propertyKey'
    -> Property -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> PropertiesPatch'
propertiesPatch' pPpPropertyKey_ pPpPayload_ pPpFileId_ =
    PropertiesPatch'
    { _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppPropertyKey = pPpPropertyKey_
    , _ppUserIP = Nothing
    , _ppVisibility = "private"
    , _ppPayload = pPpPayload_
    , _ppKey = Nothing
    , _ppFileId = pPpFileId_
    , _ppOAuthToken = Nothing
    , _ppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppQuotaUser :: Lens' PropertiesPatch' (Maybe Text)
ppQuotaUser
  = lens _ppQuotaUser (\ s a -> s{_ppQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppPrettyPrint :: Lens' PropertiesPatch' Bool
ppPrettyPrint
  = lens _ppPrettyPrint
      (\ s a -> s{_ppPrettyPrint = a})

-- | The key of the property.
ppPropertyKey :: Lens' PropertiesPatch' Text
ppPropertyKey
  = lens _ppPropertyKey
      (\ s a -> s{_ppPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppUserIP :: Lens' PropertiesPatch' (Maybe Text)
ppUserIP = lens _ppUserIP (\ s a -> s{_ppUserIP = a})

-- | The visibility of the property.
ppVisibility :: Lens' PropertiesPatch' Text
ppVisibility
  = lens _ppVisibility (\ s a -> s{_ppVisibility = a})

-- | Multipart request metadata.
ppPayload :: Lens' PropertiesPatch' Property
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PropertiesPatch' (Maybe Key)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | The ID of the file.
ppFileId :: Lens' PropertiesPatch' Text
ppFileId = lens _ppFileId (\ s a -> s{_ppFileId = a})

-- | OAuth 2.0 token for the current user.
ppOAuthToken :: Lens' PropertiesPatch' (Maybe OAuthToken)
ppOAuthToken
  = lens _ppOAuthToken (\ s a -> s{_ppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PropertiesPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

instance GoogleAuth PropertiesPatch' where
        authKey = ppKey . _Just
        authToken = ppOAuthToken . _Just

instance GoogleRequest PropertiesPatch' where
        type Rs PropertiesPatch' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesPatch'{..}
          = go _ppFileId _ppPropertyKey (Just _ppVisibility)
              _ppQuotaUser
              (Just _ppPrettyPrint)
              _ppUserIP
              _ppFields
              _ppKey
              _ppOAuthToken
              (Just AltJSON)
              _ppPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesPatchResource)
                      r
                      u
