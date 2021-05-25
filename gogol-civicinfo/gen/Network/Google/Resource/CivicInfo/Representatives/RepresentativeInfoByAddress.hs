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
-- Module      : Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up political geography and representative information for a single
-- address.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByAddress@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByAddressResource

    -- * Creating a Request
    , representativesRepresentativeInfoByAddress
    , RepresentativesRepresentativeInfoByAddress

    -- * Request Lenses
    , rribaXgafv
    , rribaRoles
    , rribaUploadProtocol
    , rribaAccessToken
    , rribaUploadType
    , rribaAddress
    , rribaIncludeOffices
    , rribaLevels
    , rribaCallback
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @civicinfo.representatives.representativeInfoByAddress@ method which the
-- 'RepresentativesRepresentativeInfoByAddress' request conforms to.
type RepresentativesRepresentativeInfoByAddressResource
     =
     "civicinfo" :>
       "v2" :>
         "representatives" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParams "roles"
               RepresentativesRepresentativeInfoByAddressRoles
               :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "address" Text :>
                       QueryParam "includeOffices" Bool :>
                         QueryParams "levels"
                           RepresentativesRepresentativeInfoByAddressLevels
                           :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] RepresentativeInfoResponse

-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ 'representativesRepresentativeInfoByAddress' smart constructor.
data RepresentativesRepresentativeInfoByAddress =
  RepresentativesRepresentativeInfoByAddress'
    { _rribaXgafv :: !(Maybe Xgafv)
    , _rribaRoles :: !(Maybe [RepresentativesRepresentativeInfoByAddressRoles])
    , _rribaUploadProtocol :: !(Maybe Text)
    , _rribaAccessToken :: !(Maybe Text)
    , _rribaUploadType :: !(Maybe Text)
    , _rribaAddress :: !(Maybe Text)
    , _rribaIncludeOffices :: !Bool
    , _rribaLevels :: !(Maybe [RepresentativesRepresentativeInfoByAddressLevels])
    , _rribaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepresentativesRepresentativeInfoByAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribaXgafv'
--
-- * 'rribaRoles'
--
-- * 'rribaUploadProtocol'
--
-- * 'rribaAccessToken'
--
-- * 'rribaUploadType'
--
-- * 'rribaAddress'
--
-- * 'rribaIncludeOffices'
--
-- * 'rribaLevels'
--
-- * 'rribaCallback'
representativesRepresentativeInfoByAddress
    :: RepresentativesRepresentativeInfoByAddress
representativesRepresentativeInfoByAddress =
  RepresentativesRepresentativeInfoByAddress'
    { _rribaXgafv = Nothing
    , _rribaRoles = Nothing
    , _rribaUploadProtocol = Nothing
    , _rribaAccessToken = Nothing
    , _rribaUploadType = Nothing
    , _rribaAddress = Nothing
    , _rribaIncludeOffices = True
    , _rribaLevels = Nothing
    , _rribaCallback = Nothing
    }


-- | V1 error format.
rribaXgafv :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Xgafv)
rribaXgafv
  = lens _rribaXgafv (\ s a -> s{_rribaXgafv = a})

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribaRoles :: Lens' RepresentativesRepresentativeInfoByAddress [RepresentativesRepresentativeInfoByAddressRoles]
rribaRoles
  = lens _rribaRoles (\ s a -> s{_rribaRoles = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rribaUploadProtocol :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaUploadProtocol
  = lens _rribaUploadProtocol
      (\ s a -> s{_rribaUploadProtocol = a})

-- | OAuth access token.
rribaAccessToken :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaAccessToken
  = lens _rribaAccessToken
      (\ s a -> s{_rribaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rribaUploadType :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaUploadType
  = lens _rribaUploadType
      (\ s a -> s{_rribaUploadType = a})

-- | The address to look up. May only be specified if the field ocdId is not
-- given in the URL
rribaAddress :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaAddress
  = lens _rribaAddress (\ s a -> s{_rribaAddress = a})

-- | Whether to return information about offices and officials. If false,
-- only the top-level district information will be returned.
rribaIncludeOffices :: Lens' RepresentativesRepresentativeInfoByAddress Bool
rribaIncludeOffices
  = lens _rribaIncludeOffices
      (\ s a -> s{_rribaIncludeOffices = a})

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
rribaLevels :: Lens' RepresentativesRepresentativeInfoByAddress [RepresentativesRepresentativeInfoByAddressLevels]
rribaLevels
  = lens _rribaLevels (\ s a -> s{_rribaLevels = a}) .
      _Default
      . _Coerce

-- | JSONP
rribaCallback :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaCallback
  = lens _rribaCallback
      (\ s a -> s{_rribaCallback = a})

instance GoogleRequest
           RepresentativesRepresentativeInfoByAddress
         where
        type Rs RepresentativesRepresentativeInfoByAddress =
             RepresentativeInfoResponse
        type Scopes
               RepresentativesRepresentativeInfoByAddress
             = '[]
        requestClient
          RepresentativesRepresentativeInfoByAddress'{..}
          = go _rribaXgafv (_rribaRoles ^. _Default)
              _rribaUploadProtocol
              _rribaAccessToken
              _rribaUploadType
              _rribaAddress
              (Just _rribaIncludeOffices)
              (_rribaLevels ^. _Default)
              _rribaCallback
              (Just AltJSON)
              civicInfoService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByAddressResource)
                      mempty
