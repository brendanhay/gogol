{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Drive.Properties.List
    (
    -- * REST Resource
      PropertiesListAPI

    -- * Creating a Request
    , propertiesList
    , PropertiesList

    -- * Request Lenses
    , prorQuotaUser
    , prorPrettyPrint
    , prorUserIp
    , prorKey
    , prorFileId
    , prorOauthToken
    , prorFields
    , prorAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesList@ which the
-- 'PropertiesList' request conforms to.
type PropertiesListAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :> Get '[JSON] PropertyList

-- | Lists a file\'s properties.
--
-- /See:/ 'propertiesList' smart constructor.
data PropertiesList = PropertiesList
    { _prorQuotaUser   :: !(Maybe Text)
    , _prorPrettyPrint :: !Bool
    , _prorUserIp      :: !(Maybe Text)
    , _prorKey         :: !(Maybe Text)
    , _prorFileId      :: !Text
    , _prorOauthToken  :: !(Maybe Text)
    , _prorFields      :: !(Maybe Text)
    , _prorAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorQuotaUser'
--
-- * 'prorPrettyPrint'
--
-- * 'prorUserIp'
--
-- * 'prorKey'
--
-- * 'prorFileId'
--
-- * 'prorOauthToken'
--
-- * 'prorFields'
--
-- * 'prorAlt'
propertiesList
    :: Text -- ^ 'fileId'
    -> PropertiesList
propertiesList pProrFileId_ =
    PropertiesList
    { _prorQuotaUser = Nothing
    , _prorPrettyPrint = True
    , _prorUserIp = Nothing
    , _prorKey = Nothing
    , _prorFileId = pProrFileId_
    , _prorOauthToken = Nothing
    , _prorFields = Nothing
    , _prorAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prorQuotaUser :: Lens' PropertiesList' (Maybe Text)
prorQuotaUser
  = lens _prorQuotaUser
      (\ s a -> s{_prorQuotaUser = a})

-- | Returns response with indentations and line breaks.
prorPrettyPrint :: Lens' PropertiesList' Bool
prorPrettyPrint
  = lens _prorPrettyPrint
      (\ s a -> s{_prorPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prorUserIp :: Lens' PropertiesList' (Maybe Text)
prorUserIp
  = lens _prorUserIp (\ s a -> s{_prorUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prorKey :: Lens' PropertiesList' (Maybe Text)
prorKey = lens _prorKey (\ s a -> s{_prorKey = a})

-- | The ID of the file.
prorFileId :: Lens' PropertiesList' Text
prorFileId
  = lens _prorFileId (\ s a -> s{_prorFileId = a})

-- | OAuth 2.0 token for the current user.
prorOauthToken :: Lens' PropertiesList' (Maybe Text)
prorOauthToken
  = lens _prorOauthToken
      (\ s a -> s{_prorOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prorFields :: Lens' PropertiesList' (Maybe Text)
prorFields
  = lens _prorFields (\ s a -> s{_prorFields = a})

-- | Data format for the response.
prorAlt :: Lens' PropertiesList' Text
prorAlt = lens _prorAlt (\ s a -> s{_prorAlt = a})

instance GoogleRequest PropertiesList' where
        type Rs PropertiesList' = PropertyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesList{..}
          = go _prorQuotaUser _prorPrettyPrint _prorUserIp
              _prorKey
              _prorFileId
              _prorOauthToken
              _prorFields
              _prorAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PropertiesListAPI)
                      r
                      u
