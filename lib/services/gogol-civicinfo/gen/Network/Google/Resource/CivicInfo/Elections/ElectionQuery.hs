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
-- Module      : Network.Google.Resource.CivicInfo.Elections.ElectionQuery
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of available elections to query.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.elections.electionQuery@.
module Network.Google.Resource.CivicInfo.Elections.ElectionQuery
    (
    -- * REST Resource
      ElectionsElectionQueryResource

    -- * Creating a Request
    , electionsElectionQuery
    , ElectionsElectionQuery

    -- * Request Lenses
    , eeqXgafv
    , eeqUploadProtocol
    , eeqAccessToken
    , eeqUploadType
    , eeqCallback
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @civicinfo.elections.electionQuery@ method which the
-- 'ElectionsElectionQuery' request conforms to.
type ElectionsElectionQueryResource =
     "civicinfo" :>
       "v2" :>
         "elections" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ElectionsQueryResponse

-- | List of available elections to query.
--
-- /See:/ 'electionsElectionQuery' smart constructor.
data ElectionsElectionQuery =
  ElectionsElectionQuery'
    { _eeqXgafv :: !(Maybe Xgafv)
    , _eeqUploadProtocol :: !(Maybe Text)
    , _eeqAccessToken :: !(Maybe Text)
    , _eeqUploadType :: !(Maybe Text)
    , _eeqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ElectionsElectionQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeqXgafv'
--
-- * 'eeqUploadProtocol'
--
-- * 'eeqAccessToken'
--
-- * 'eeqUploadType'
--
-- * 'eeqCallback'
electionsElectionQuery
    :: ElectionsElectionQuery
electionsElectionQuery =
  ElectionsElectionQuery'
    { _eeqXgafv = Nothing
    , _eeqUploadProtocol = Nothing
    , _eeqAccessToken = Nothing
    , _eeqUploadType = Nothing
    , _eeqCallback = Nothing
    }


-- | V1 error format.
eeqXgafv :: Lens' ElectionsElectionQuery (Maybe Xgafv)
eeqXgafv = lens _eeqXgafv (\ s a -> s{_eeqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eeqUploadProtocol :: Lens' ElectionsElectionQuery (Maybe Text)
eeqUploadProtocol
  = lens _eeqUploadProtocol
      (\ s a -> s{_eeqUploadProtocol = a})

-- | OAuth access token.
eeqAccessToken :: Lens' ElectionsElectionQuery (Maybe Text)
eeqAccessToken
  = lens _eeqAccessToken
      (\ s a -> s{_eeqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eeqUploadType :: Lens' ElectionsElectionQuery (Maybe Text)
eeqUploadType
  = lens _eeqUploadType
      (\ s a -> s{_eeqUploadType = a})

-- | JSONP
eeqCallback :: Lens' ElectionsElectionQuery (Maybe Text)
eeqCallback
  = lens _eeqCallback (\ s a -> s{_eeqCallback = a})

instance GoogleRequest ElectionsElectionQuery where
        type Rs ElectionsElectionQuery =
             ElectionsQueryResponse
        type Scopes ElectionsElectionQuery = '[]
        requestClient ElectionsElectionQuery'{..}
          = go _eeqXgafv _eeqUploadProtocol _eeqAccessToken
              _eeqUploadType
              _eeqCallback
              (Just AltJSON)
              civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy ElectionsElectionQueryResource)
                      mempty
