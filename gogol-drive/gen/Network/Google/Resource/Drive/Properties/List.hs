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
-- Module      : Network.Google.Resource.Drive.Properties.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s properties.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesList@.
module Network.Google.Resource.Drive.Properties.List
    (
    -- * REST Resource
      PropertiesListResource

    -- * Creating a Request
    , propertiesList'
    , PropertiesList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plKey
    , plFileId
    , plOAuthToken
    , plFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesList@ method which the
-- 'PropertiesList'' request conforms to.
type PropertiesListResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] PropertyList

-- | Lists a file\'s properties.
--
-- /See:/ 'propertiesList'' smart constructor.
data PropertiesList' = PropertiesList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plKey         :: !(Maybe AuthKey)
    , _plFileId      :: !Text
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plKey'
--
-- * 'plFileId'
--
-- * 'plOAuthToken'
--
-- * 'plFields'
propertiesList'
    :: Text -- ^ 'fileId'
    -> PropertiesList'
propertiesList' pPlFileId_ =
    PropertiesList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plKey = Nothing
    , _plFileId = pPlFileId_
    , _plOAuthToken = Nothing
    , _plFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PropertiesList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PropertiesList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIP :: Lens' PropertiesList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PropertiesList' (Maybe AuthKey)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The ID of the file.
plFileId :: Lens' PropertiesList' Text
plFileId = lens _plFileId (\ s a -> s{_plFileId = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' PropertiesList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PropertiesList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth PropertiesList' where
        _AuthKey = plKey . _Just
        _AuthToken = plOAuthToken . _Just

instance GoogleRequest PropertiesList' where
        type Rs PropertiesList' = PropertyList
        request = requestWith driveRequest
        requestWith rq PropertiesList'{..}
          = go _plFileId _plQuotaUser (Just _plPrettyPrint)
              _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PropertiesListResource)
                      rq
