{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Properties.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s properties.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.list@.
module Network.Google.API.Drive.Properties.List
    (
    -- * REST Resource
      PropertiesListAPI

    -- * Creating a Request
    , propertiesList'
    , PropertiesList'

    -- * Request Lenses
    , pllQuotaUser
    , pllPrettyPrint
    , pllUserIp
    , pllKey
    , pllFileId
    , pllOauthToken
    , pllFields
    , pllAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.properties.list which the
-- 'PropertiesList'' request conforms to.
type PropertiesListAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] PropertyList

-- | Lists a file\'s properties.
--
-- /See:/ 'propertiesList'' smart constructor.
data PropertiesList' = PropertiesList'
    { _pllQuotaUser   :: !(Maybe Text)
    , _pllPrettyPrint :: !Bool
    , _pllUserIp      :: !(Maybe Text)
    , _pllKey         :: !(Maybe Text)
    , _pllFileId      :: !Text
    , _pllOauthToken  :: !(Maybe Text)
    , _pllFields      :: !(Maybe Text)
    , _pllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllQuotaUser'
--
-- * 'pllPrettyPrint'
--
-- * 'pllUserIp'
--
-- * 'pllKey'
--
-- * 'pllFileId'
--
-- * 'pllOauthToken'
--
-- * 'pllFields'
--
-- * 'pllAlt'
propertiesList'
    :: Text -- ^ 'fileId'
    -> PropertiesList'
propertiesList' pPllFileId_ =
    PropertiesList'
    { _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllUserIp = Nothing
    , _pllKey = Nothing
    , _pllFileId = pPllFileId_
    , _pllOauthToken = Nothing
    , _pllFields = Nothing
    , _pllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pllQuotaUser :: Lens' PropertiesList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' PropertiesList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIp :: Lens' PropertiesList' (Maybe Text)
pllUserIp
  = lens _pllUserIp (\ s a -> s{_pllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PropertiesList' (Maybe Text)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | The ID of the file.
pllFileId :: Lens' PropertiesList' Text
pllFileId
  = lens _pllFileId (\ s a -> s{_pllFileId = a})

-- | OAuth 2.0 token for the current user.
pllOauthToken :: Lens' PropertiesList' (Maybe Text)
pllOauthToken
  = lens _pllOauthToken
      (\ s a -> s{_pllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PropertiesList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

-- | Data format for the response.
pllAlt :: Lens' PropertiesList' Alt
pllAlt = lens _pllAlt (\ s a -> s{_pllAlt = a})

instance GoogleRequest PropertiesList' where
        type Rs PropertiesList' = PropertyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesList'{..}
          = go _pllQuotaUser (Just _pllPrettyPrint) _pllUserIp
              _pllKey
              _pllFileId
              _pllOauthToken
              _pllFields
              (Just _pllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PropertiesListAPI)
                      r
                      u
