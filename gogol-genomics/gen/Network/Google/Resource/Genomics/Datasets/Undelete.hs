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
-- Module      : Network.Google.Resource.Genomics.Datasets.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsUndelete@.
module Network.Google.Resource.Genomics.Datasets.Undelete
    (
    -- * REST Resource
      DatasetsUndeleteResource

    -- * Creating a Request
    , datasetsUndelete'
    , DatasetsUndelete'

    -- * Request Lenses
    , duQuotaUser
    , duPrettyPrint
    , duUserIp
    , duKey
    , duDatasetId
    , duOauthToken
    , duFields
    , duAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsUndelete@ which the
-- 'DatasetsUndelete'' request conforms to.
type DatasetsUndeleteResource =
     "datasets" :>
       Capture "datasetId" Text :>
         "undelete" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Dataset

-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
--
-- /See:/ 'datasetsUndelete'' smart constructor.
data DatasetsUndelete' = DatasetsUndelete'
    { _duQuotaUser   :: !(Maybe Text)
    , _duPrettyPrint :: !Bool
    , _duUserIp      :: !(Maybe Text)
    , _duKey         :: !(Maybe Text)
    , _duDatasetId   :: !Text
    , _duOauthToken  :: !(Maybe Text)
    , _duFields      :: !(Maybe Text)
    , _duAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duUserIp'
--
-- * 'duKey'
--
-- * 'duDatasetId'
--
-- * 'duOauthToken'
--
-- * 'duFields'
--
-- * 'duAlt'
datasetsUndelete'
    :: Text -- ^ 'datasetId'
    -> DatasetsUndelete'
datasetsUndelete' pDuDatasetId_ =
    DatasetsUndelete'
    { _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duUserIp = Nothing
    , _duKey = Nothing
    , _duDatasetId = pDuDatasetId_
    , _duOauthToken = Nothing
    , _duFields = Nothing
    , _duAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatasetsUndelete' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatasetsUndelete' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIp :: Lens' DatasetsUndelete' (Maybe Text)
duUserIp = lens _duUserIp (\ s a -> s{_duUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatasetsUndelete' (Maybe Text)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | The ID of the dataset to be undeleted.
duDatasetId :: Lens' DatasetsUndelete' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | OAuth 2.0 token for the current user.
duOauthToken :: Lens' DatasetsUndelete' (Maybe Text)
duOauthToken
  = lens _duOauthToken (\ s a -> s{_duOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatasetsUndelete' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | Data format for the response.
duAlt :: Lens' DatasetsUndelete' Alt
duAlt = lens _duAlt (\ s a -> s{_duAlt = a})

instance GoogleRequest DatasetsUndelete' where
        type Rs DatasetsUndelete' = Dataset
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsUndelete'{..}
          = go _duQuotaUser (Just _duPrettyPrint) _duUserIp
              _duKey
              _duDatasetId
              _duOauthToken
              _duFields
              (Just _duAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsUndeleteResource)
                      r
                      u
