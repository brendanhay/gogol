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
-- Module      : Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.elections.voterInfoQuery@.
module Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
    (
    -- * REST Resource
      ElectionsVoterInfoQueryResource

    -- * Creating a Request
    , electionsVoterInfoQuery
    , ElectionsVoterInfoQuery

    -- * Request Lenses
    , eviqXgafv
    , eviqReturnAllAvailableData
    , eviqUploadProtocol
    , eviqAccessToken
    , eviqUploadType
    , eviqElectionId
    , eviqAddress
    , eviqOfficialOnly
    , eviqCallback
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @civicinfo.elections.voterInfoQuery@ method which the
-- 'ElectionsVoterInfoQuery' request conforms to.
type ElectionsVoterInfoQueryResource =
     "civicinfo" :>
       "v2" :>
         "voterinfo" :>
           QueryParam "address" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "returnAllAvailableData" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "electionId" (Textual Int64) :>
                         QueryParam "officialOnly" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ 'electionsVoterInfoQuery' smart constructor.
data ElectionsVoterInfoQuery =
  ElectionsVoterInfoQuery'
    { _eviqXgafv :: !(Maybe Xgafv)
    , _eviqReturnAllAvailableData :: !Bool
    , _eviqUploadProtocol :: !(Maybe Text)
    , _eviqAccessToken :: !(Maybe Text)
    , _eviqUploadType :: !(Maybe Text)
    , _eviqElectionId :: !(Textual Int64)
    , _eviqAddress :: !Text
    , _eviqOfficialOnly :: !Bool
    , _eviqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ElectionsVoterInfoQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviqXgafv'
--
-- * 'eviqReturnAllAvailableData'
--
-- * 'eviqUploadProtocol'
--
-- * 'eviqAccessToken'
--
-- * 'eviqUploadType'
--
-- * 'eviqElectionId'
--
-- * 'eviqAddress'
--
-- * 'eviqOfficialOnly'
--
-- * 'eviqCallback'
electionsVoterInfoQuery
    :: Text -- ^ 'eviqAddress'
    -> ElectionsVoterInfoQuery
electionsVoterInfoQuery pEviqAddress_ =
  ElectionsVoterInfoQuery'
    { _eviqXgafv = Nothing
    , _eviqReturnAllAvailableData = False
    , _eviqUploadProtocol = Nothing
    , _eviqAccessToken = Nothing
    , _eviqUploadType = Nothing
    , _eviqElectionId = 0
    , _eviqAddress = pEviqAddress_
    , _eviqOfficialOnly = False
    , _eviqCallback = Nothing
    }


-- | V1 error format.
eviqXgafv :: Lens' ElectionsVoterInfoQuery (Maybe Xgafv)
eviqXgafv
  = lens _eviqXgafv (\ s a -> s{_eviqXgafv = a})

-- | If set to true, the query will return the success code and include any
-- partial information when it is unable to determine a matching address or
-- unable to determine the election for electionId=0 queries.
eviqReturnAllAvailableData :: Lens' ElectionsVoterInfoQuery Bool
eviqReturnAllAvailableData
  = lens _eviqReturnAllAvailableData
      (\ s a -> s{_eviqReturnAllAvailableData = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eviqUploadProtocol :: Lens' ElectionsVoterInfoQuery (Maybe Text)
eviqUploadProtocol
  = lens _eviqUploadProtocol
      (\ s a -> s{_eviqUploadProtocol = a})

-- | OAuth access token.
eviqAccessToken :: Lens' ElectionsVoterInfoQuery (Maybe Text)
eviqAccessToken
  = lens _eviqAccessToken
      (\ s a -> s{_eviqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eviqUploadType :: Lens' ElectionsVoterInfoQuery (Maybe Text)
eviqUploadType
  = lens _eviqUploadType
      (\ s a -> s{_eviqUploadType = a})

-- | The unique ID of the election to look up. A list of election IDs can be
-- obtained at
-- https:\/\/www.googleapis.com\/civicinfo\/{version}\/elections. If no
-- election ID is specified in the query and there is more than one
-- election with data for the given voter, the additional elections are
-- provided in the otherElections response field.
eviqElectionId :: Lens' ElectionsVoterInfoQuery Int64
eviqElectionId
  = lens _eviqElectionId
      (\ s a -> s{_eviqElectionId = a})
      . _Coerce

-- | The registered address of the voter to look up.
eviqAddress :: Lens' ElectionsVoterInfoQuery Text
eviqAddress
  = lens _eviqAddress (\ s a -> s{_eviqAddress = a})

-- | If set to true, only data from official state sources will be returned.
eviqOfficialOnly :: Lens' ElectionsVoterInfoQuery Bool
eviqOfficialOnly
  = lens _eviqOfficialOnly
      (\ s a -> s{_eviqOfficialOnly = a})

-- | JSONP
eviqCallback :: Lens' ElectionsVoterInfoQuery (Maybe Text)
eviqCallback
  = lens _eviqCallback (\ s a -> s{_eviqCallback = a})

instance GoogleRequest ElectionsVoterInfoQuery where
        type Rs ElectionsVoterInfoQuery = VoterInfoResponse
        type Scopes ElectionsVoterInfoQuery = '[]
        requestClient ElectionsVoterInfoQuery'{..}
          = go (Just _eviqAddress) _eviqXgafv
              (Just _eviqReturnAllAvailableData)
              _eviqUploadProtocol
              _eviqAccessToken
              _eviqUploadType
              (Just _eviqElectionId)
              (Just _eviqOfficialOnly)
              _eviqCallback
              (Just AltJSON)
              civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy ElectionsVoterInfoQueryResource)
                      mempty
