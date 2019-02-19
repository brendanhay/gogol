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
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByAddress@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByAddressResource

    -- * Creating a Request
    , representativesRepresentativeInfoByAddress
    , RepresentativesRepresentativeInfoByAddress

    -- * Request Lenses
    , rribaRoles
    , rribaAddress
    , rribaPayload
    , rribaIncludeOffices
    , rribaLevels
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @civicinfo.representatives.representativeInfoByAddress@ method which the
-- 'RepresentativesRepresentativeInfoByAddress' request conforms to.
type RepresentativesRepresentativeInfoByAddressResource
     =
     "civicinfo" :>
       "v2" :>
         "representatives" :>
           QueryParams "roles"
             RepresentativesRepresentativeInfoByAddressRoles
             :>
             QueryParam "address" Text :>
               QueryParam "includeOffices" Bool :>
                 QueryParams "levels"
                   RepresentativesRepresentativeInfoByAddressLevels
                   :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RepresentativeInfoRequest :>
                       Get '[JSON] RepresentativeInfoResponse

-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ 'representativesRepresentativeInfoByAddress' smart constructor.
data RepresentativesRepresentativeInfoByAddress =
  RepresentativesRepresentativeInfoByAddress'
    { _rribaRoles          :: !(Maybe [RepresentativesRepresentativeInfoByAddressRoles])
    , _rribaAddress        :: !(Maybe Text)
    , _rribaPayload        :: !RepresentativeInfoRequest
    , _rribaIncludeOffices :: !Bool
    , _rribaLevels         :: !(Maybe [RepresentativesRepresentativeInfoByAddressLevels])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepresentativesRepresentativeInfoByAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribaRoles'
--
-- * 'rribaAddress'
--
-- * 'rribaPayload'
--
-- * 'rribaIncludeOffices'
--
-- * 'rribaLevels'
representativesRepresentativeInfoByAddress
    :: RepresentativeInfoRequest -- ^ 'rribaPayload'
    -> RepresentativesRepresentativeInfoByAddress
representativesRepresentativeInfoByAddress pRribaPayload_ =
  RepresentativesRepresentativeInfoByAddress'
    { _rribaRoles = Nothing
    , _rribaAddress = Nothing
    , _rribaPayload = pRribaPayload_
    , _rribaIncludeOffices = True
    , _rribaLevels = Nothing
    }


-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribaRoles :: Lens' RepresentativesRepresentativeInfoByAddress [RepresentativesRepresentativeInfoByAddressRoles]
rribaRoles
  = lens _rribaRoles (\ s a -> s{_rribaRoles = a}) .
      _Default
      . _Coerce

-- | The address to look up. May only be specified if the field ocdId is not
-- given in the URL.
rribaAddress :: Lens' RepresentativesRepresentativeInfoByAddress (Maybe Text)
rribaAddress
  = lens _rribaAddress (\ s a -> s{_rribaAddress = a})

-- | Multipart request metadata.
rribaPayload :: Lens' RepresentativesRepresentativeInfoByAddress RepresentativeInfoRequest
rribaPayload
  = lens _rribaPayload (\ s a -> s{_rribaPayload = a})

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
          = go (_rribaRoles ^. _Default) _rribaAddress
              (Just _rribaIncludeOffices)
              (_rribaLevels ^. _Default)
              (Just AltJSON)
              _rribaPayload
              civicInfoService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByAddressResource)
                      mempty
