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
-- Module      : Network.Google.Resource.Genomics.Datasets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsCreate@.
module Network.Google.Resource.Genomics.Datasets.Create
    (
    -- * REST Resource
      DatasetsCreateResource

    -- * Creating a Request
    , datasetsCreate'
    , DatasetsCreate'

    -- * Request Lenses
    , dcQuotaUser
    , dcPrettyPrint
    , dcUserIp
    , dcKey
    , dcOauthToken
    , dcFields
    , dcAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsCreate@ which the
-- 'DatasetsCreate'' request conforms to.
type DatasetsCreateResource =
     "datasets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Dataset

-- | Creates a new dataset.
--
-- /See:/ 'datasetsCreate'' smart constructor.
data DatasetsCreate' = DatasetsCreate'
    { _dcQuotaUser   :: !(Maybe Text)
    , _dcPrettyPrint :: !Bool
    , _dcUserIp      :: !(Maybe Text)
    , _dcKey         :: !(Maybe Text)
    , _dcOauthToken  :: !(Maybe Text)
    , _dcFields      :: !(Maybe Text)
    , _dcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUserIp'
--
-- * 'dcKey'
--
-- * 'dcOauthToken'
--
-- * 'dcFields'
--
-- * 'dcAlt'
datasetsCreate'
    :: DatasetsCreate'
datasetsCreate' =
    DatasetsCreate'
    { _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUserIp = Nothing
    , _dcKey = Nothing
    , _dcOauthToken = Nothing
    , _dcFields = Nothing
    , _dcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcQuotaUser :: Lens' DatasetsCreate' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatasetsCreate' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcUserIp :: Lens' DatasetsCreate' (Maybe Text)
dcUserIp = lens _dcUserIp (\ s a -> s{_dcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatasetsCreate' (Maybe Text)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | OAuth 2.0 token for the current user.
dcOauthToken :: Lens' DatasetsCreate' (Maybe Text)
dcOauthToken
  = lens _dcOauthToken (\ s a -> s{_dcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatasetsCreate' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

-- | Data format for the response.
dcAlt :: Lens' DatasetsCreate' Alt
dcAlt = lens _dcAlt (\ s a -> s{_dcAlt = a})

instance GoogleRequest DatasetsCreate' where
        type Rs DatasetsCreate' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsCreate'{..}
          = go _dcQuotaUser (Just _dcPrettyPrint) _dcUserIp
              _dcKey
              _dcOauthToken
              _dcFields
              (Just _dcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsCreateResource)
                      r
                      u
