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
    , plUserIp
    , plKey
    , plFileId
    , plOauthToken
    , plFields
    , plAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesList@ which the
-- 'PropertiesList'' request conforms to.
type PropertiesListResource =
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
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIp      :: !(Maybe Text)
    , _plKey         :: !(Maybe Text)
    , _plFileId      :: !Text
    , _plOauthToken  :: !(Maybe Text)
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plKey'
--
-- * 'plFileId'
--
-- * 'plOauthToken'
--
-- * 'plFields'
--
-- * 'plAlt'
propertiesList'
    :: Text -- ^ 'fileId'
    -> PropertiesList'
propertiesList' pPlFileId_ =
    PropertiesList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plKey = Nothing
    , _plFileId = pPlFileId_
    , _plOauthToken = Nothing
    , _plFields = Nothing
    , _plAlt = JSON
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
plUserIp :: Lens' PropertiesList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PropertiesList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The ID of the file.
plFileId :: Lens' PropertiesList' Text
plFileId = lens _plFileId (\ s a -> s{_plFileId = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PropertiesList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PropertiesList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PropertiesList' Alt
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PropertiesList' where
        type Rs PropertiesList' = PropertyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIp
              _plKey
              _plFileId
              _plOauthToken
              _plFields
              (Just _plAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesListResource)
                      r
                      u
