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
-- Module      : Network.Google.Resource.Genomics.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsDatasetsDelete@.
module Network.Google.Resource.Genomics.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteResource

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddUserIP
    , ddKey
    , ddDatasetId
    , ddOAuthToken
    , ddFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsDelete@ which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteResource =
     "datasets" :>
       Capture "datasetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a dataset.
--
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddPrettyPrint :: !Bool
    , _ddUserIP      :: !(Maybe Text)
    , _ddKey         :: !(Maybe Key)
    , _ddDatasetId   :: !Text
    , _ddOAuthToken  :: !(Maybe OAuthToken)
    , _ddFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddUserIP'
--
-- * 'ddKey'
--
-- * 'ddDatasetId'
--
-- * 'ddOAuthToken'
--
-- * 'ddFields'
datasetsDelete'
    :: Text -- ^ 'datasetId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ =
    DatasetsDelete'
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddUserIP = Nothing
    , _ddKey = Nothing
    , _ddDatasetId = pDdDatasetId_
    , _ddOAuthToken = Nothing
    , _ddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DatasetsDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DatasetsDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIP :: Lens' DatasetsDelete' (Maybe Text)
ddUserIP = lens _ddUserIP (\ s a -> s{_ddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatasetsDelete' (Maybe Key)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | The ID of the dataset to be deleted.
ddDatasetId :: Lens' DatasetsDelete' Text
ddDatasetId
  = lens _ddDatasetId (\ s a -> s{_ddDatasetId = a})

-- | OAuth 2.0 token for the current user.
ddOAuthToken :: Lens' DatasetsDelete' (Maybe OAuthToken)
ddOAuthToken
  = lens _ddOAuthToken (\ s a -> s{_ddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatasetsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

instance GoogleAuth DatasetsDelete' where
        authKey = ddKey . _Just
        authToken = ddOAuthToken . _Just

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u DatasetsDelete'{..}
          = go _ddDatasetId _ddQuotaUser (Just _ddPrettyPrint)
              _ddUserIP
              _ddFields
              _ddKey
              _ddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatasetsDeleteResource)
                      r
                      u
