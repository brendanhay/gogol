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
-- Module      : Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up representative information for a single geographic division.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByDivision@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByDivisionResource

    -- * Creating a Request
    , representativesRepresentativeInfoByDivision
    , RepresentativesRepresentativeInfoByDivision

    -- * Request Lenses
    , rribdRoles
    , rribdPayload
    , rribdRecursive
    , rribdOcdId
    , rribdLevels
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @civicinfo.representatives.representativeInfoByDivision@ method which the
-- 'RepresentativesRepresentativeInfoByDivision' request conforms to.
type RepresentativesRepresentativeInfoByDivisionResource
     =
     "civicinfo" :>
       "v2" :>
         "representatives" :>
           Capture "ocdId" Text :>
             QueryParams "roles"
               RepresentativesRepresentativeInfoByDivisionRoles
               :>
               QueryParam "recursive" Bool :>
                 QueryParams "levels"
                   RepresentativesRepresentativeInfoByDivisionLevels
                   :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DivisionRepresentativeInfoRequest :>
                       Get '[JSON] RepresentativeInfoData

-- | Looks up representative information for a single geographic division.
--
-- /See:/ 'representativesRepresentativeInfoByDivision' smart constructor.
data RepresentativesRepresentativeInfoByDivision =
  RepresentativesRepresentativeInfoByDivision'
    { _rribdRoles     :: !(Maybe [RepresentativesRepresentativeInfoByDivisionRoles])
    , _rribdPayload   :: !DivisionRepresentativeInfoRequest
    , _rribdRecursive :: !(Maybe Bool)
    , _rribdOcdId     :: !Text
    , _rribdLevels    :: !(Maybe [RepresentativesRepresentativeInfoByDivisionLevels])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RepresentativesRepresentativeInfoByDivision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribdRoles'
--
-- * 'rribdPayload'
--
-- * 'rribdRecursive'
--
-- * 'rribdOcdId'
--
-- * 'rribdLevels'
representativesRepresentativeInfoByDivision
    :: DivisionRepresentativeInfoRequest -- ^ 'rribdPayload'
    -> Text -- ^ 'rribdOcdId'
    -> RepresentativesRepresentativeInfoByDivision
representativesRepresentativeInfoByDivision pRribdPayload_ pRribdOcdId_ =
  RepresentativesRepresentativeInfoByDivision'
    { _rribdRoles = Nothing
    , _rribdPayload = pRribdPayload_
    , _rribdRecursive = Nothing
    , _rribdOcdId = pRribdOcdId_
    , _rribdLevels = Nothing
    }

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribdRoles :: Lens' RepresentativesRepresentativeInfoByDivision [RepresentativesRepresentativeInfoByDivisionRoles]
rribdRoles
  = lens _rribdRoles (\ s a -> s{_rribdRoles = a}) .
      _Default
      . _Coerce

-- | Multipart request metadata.
rribdPayload :: Lens' RepresentativesRepresentativeInfoByDivision DivisionRepresentativeInfoRequest
rribdPayload
  = lens _rribdPayload (\ s a -> s{_rribdPayload = a})

-- | If true, information about all divisions contained in the division
-- requested will be included as well. For example, if querying
-- ocd-division\/country:us\/district:dc, this would also return all DC\'s
-- wards and ANCs.
rribdRecursive :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Bool)
rribdRecursive
  = lens _rribdRecursive
      (\ s a -> s{_rribdRecursive = a})

-- | The Open Civic Data division identifier of the division to look up.
rribdOcdId :: Lens' RepresentativesRepresentativeInfoByDivision Text
rribdOcdId
  = lens _rribdOcdId (\ s a -> s{_rribdOcdId = a})

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
rribdLevels :: Lens' RepresentativesRepresentativeInfoByDivision [RepresentativesRepresentativeInfoByDivisionLevels]
rribdLevels
  = lens _rribdLevels (\ s a -> s{_rribdLevels = a}) .
      _Default
      . _Coerce

instance GoogleRequest
           RepresentativesRepresentativeInfoByDivision
         where
        type Rs RepresentativesRepresentativeInfoByDivision =
             RepresentativeInfoData
        type Scopes
               RepresentativesRepresentativeInfoByDivision
             = '[]
        requestClient
          RepresentativesRepresentativeInfoByDivision'{..}
          = go _rribdOcdId (_rribdRoles ^. _Default)
              _rribdRecursive
              (_rribdLevels ^. _Default)
              (Just AltJSON)
              _rribdPayload
              civicInfoService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByDivisionResource)
                      mempty
