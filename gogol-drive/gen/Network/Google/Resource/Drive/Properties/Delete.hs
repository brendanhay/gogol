{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Properties.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesDelete@.
module Network.Google.Resource.Drive.Properties.Delete
    (
    -- * REST Resource
      PropertiesDeleteResource

    -- * Creating a Request
    , propertiesDelete'
    , PropertiesDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdPropertyKey
    , pdUserIP
    , pdVisibility
    , pdKey
    , pdFileId
    , pdOAuthToken
    , pdFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesDelete@ which the
-- 'PropertiesDelete'' request conforms to.
type PropertiesDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a property.
--
-- /See:/ 'propertiesDelete'' smart constructor.
data PropertiesDelete' = PropertiesDelete'
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdPrettyPrint :: !Bool
    , _pdPropertyKey :: !Text
    , _pdUserIP      :: !(Maybe Text)
    , _pdVisibility  :: !Text
    , _pdKey         :: !(Maybe Key)
    , _pdFileId      :: !Text
    , _pdOAuthToken  :: !(Maybe OAuthToken)
    , _pdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdPropertyKey'
--
-- * 'pdUserIP'
--
-- * 'pdVisibility'
--
-- * 'pdKey'
--
-- * 'pdFileId'
--
-- * 'pdOAuthToken'
--
-- * 'pdFields'
propertiesDelete'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesDelete'
propertiesDelete' pPdPropertyKey_ pPdFileId_ =
    PropertiesDelete'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdPropertyKey = pPdPropertyKey_
    , _pdUserIP = Nothing
    , _pdVisibility = "private"
    , _pdKey = Nothing
    , _pdFileId = pPdFileId_
    , _pdOAuthToken = Nothing
    , _pdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PropertiesDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PropertiesDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | The key of the property.
pdPropertyKey :: Lens' PropertiesDelete' Text
pdPropertyKey
  = lens _pdPropertyKey
      (\ s a -> s{_pdPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIP :: Lens' PropertiesDelete' (Maybe Text)
pdUserIP = lens _pdUserIP (\ s a -> s{_pdUserIP = a})

-- | The visibility of the property.
pdVisibility :: Lens' PropertiesDelete' Text
pdVisibility
  = lens _pdVisibility (\ s a -> s{_pdVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PropertiesDelete' (Maybe Key)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The ID of the file.
pdFileId :: Lens' PropertiesDelete' Text
pdFileId = lens _pdFileId (\ s a -> s{_pdFileId = a})

-- | OAuth 2.0 token for the current user.
pdOAuthToken :: Lens' PropertiesDelete' (Maybe OAuthToken)
pdOAuthToken
  = lens _pdOAuthToken (\ s a -> s{_pdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PropertiesDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

instance GoogleAuth PropertiesDelete' where
        authKey = pdKey . _Just
        authToken = pdOAuthToken . _Just

instance GoogleRequest PropertiesDelete' where
        type Rs PropertiesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesDelete'{..}
          = go (Just _pdVisibility) _pdFileId _pdPropertyKey
              _pdQuotaUser
              (Just _pdPrettyPrint)
              _pdUserIP
              _pdFields
              _pdKey
              _pdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesDeleteResource)
                      r
                      u
