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
-- Module      : Network.Google.Resource.Datastore.Datasets.Lookup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Look up some entities by key.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsLookup@.
module Network.Google.Resource.Datastore.Datasets.Lookup
    (
    -- * REST Resource
      DatasetsLookupResource

    -- * Creating a Request
    , datasetsLookup'
    , DatasetsLookup'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlUserIP
    , dlPayload
    , dlKey
    , dlDatasetId
    , dlOAuthToken
    , dlFields
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsLookup@ method which the
-- 'DatasetsLookup'' request conforms to.
type DatasetsLookupResource =
     Capture "datasetId" Text :>
       "lookup" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LookupRequest :>
                         Post '[JSON] LookupResponse

-- | Look up some entities by key.
--
-- /See:/ 'datasetsLookup'' smart constructor.
data DatasetsLookup' = DatasetsLookup'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlUserIP      :: !(Maybe Text)
    , _dlPayload     :: !LookupRequest
    , _dlKey         :: !(Maybe AuthKey)
    , _dlDatasetId   :: !Text
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsLookup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIP'
--
-- * 'dlPayload'
--
-- * 'dlKey'
--
-- * 'dlDatasetId'
--
-- * 'dlOAuthToken'
--
-- * 'dlFields'
datasetsLookup'
    :: LookupRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsLookup'
datasetsLookup' pDlPayload_ pDlDatasetId_ =
    DatasetsLookup'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIP = Nothing
    , _dlPayload = pDlPayload_
    , _dlKey = Nothing
    , _dlDatasetId = pDlDatasetId_
    , _dlOAuthToken = Nothing
    , _dlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatasetsLookup' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatasetsLookup' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DatasetsLookup' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | Multipart request metadata.
dlPayload :: Lens' DatasetsLookup' LookupRequest
dlPayload
  = lens _dlPayload (\ s a -> s{_dlPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatasetsLookup' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | Identifies the dataset.
dlDatasetId :: Lens' DatasetsLookup' Text
dlDatasetId
  = lens _dlDatasetId (\ s a -> s{_dlDatasetId = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatasetsLookup' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatasetsLookup' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DatasetsLookup' where
        _AuthKey = dlKey . _Just
        _AuthToken = dlOAuthToken . _Just

instance GoogleRequest DatasetsLookup' where
        type Rs DatasetsLookup' = LookupResponse
        request = requestWith datastoreRequest
        requestWith rq DatasetsLookup'{..}
          = go _dlDatasetId _dlQuotaUser (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
              _dlPayload
          where go
                  = clientBuild (Proxy :: Proxy DatasetsLookupResource)
                      rq
