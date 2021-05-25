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
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByDivision@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByDivisionResource

    -- * Creating a Request
    , representativesRepresentativeInfoByDivision
    , RepresentativesRepresentativeInfoByDivision

    -- * Request Lenses
    , rribdXgafv
    , rribdRoles
    , rribdUploadProtocol
    , rribdAccessToken
    , rribdUploadType
    , rribdRecursive
    , rribdOcdId
    , rribdLevels
    , rribdCallback
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @civicinfo.representatives.representativeInfoByDivision@ method which the
-- 'RepresentativesRepresentativeInfoByDivision' request conforms to.
type RepresentativesRepresentativeInfoByDivisionResource
     =
     "civicinfo" :>
       "v2" :>
         "representatives" :>
           Capture "ocdId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParams "roles"
                 RepresentativesRepresentativeInfoByDivisionRoles
                 :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "recursive" Bool :>
                         QueryParams "levels"
                           RepresentativesRepresentativeInfoByDivisionLevels
                           :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] RepresentativeInfoData

-- | Looks up representative information for a single geographic division.
--
-- /See:/ 'representativesRepresentativeInfoByDivision' smart constructor.
data RepresentativesRepresentativeInfoByDivision =
  RepresentativesRepresentativeInfoByDivision'
    { _rribdXgafv :: !(Maybe Xgafv)
    , _rribdRoles :: !(Maybe [RepresentativesRepresentativeInfoByDivisionRoles])
    , _rribdUploadProtocol :: !(Maybe Text)
    , _rribdAccessToken :: !(Maybe Text)
    , _rribdUploadType :: !(Maybe Text)
    , _rribdRecursive :: !(Maybe Bool)
    , _rribdOcdId :: !Text
    , _rribdLevels :: !(Maybe [RepresentativesRepresentativeInfoByDivisionLevels])
    , _rribdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepresentativesRepresentativeInfoByDivision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribdXgafv'
--
-- * 'rribdRoles'
--
-- * 'rribdUploadProtocol'
--
-- * 'rribdAccessToken'
--
-- * 'rribdUploadType'
--
-- * 'rribdRecursive'
--
-- * 'rribdOcdId'
--
-- * 'rribdLevels'
--
-- * 'rribdCallback'
representativesRepresentativeInfoByDivision
    :: Text -- ^ 'rribdOcdId'
    -> RepresentativesRepresentativeInfoByDivision
representativesRepresentativeInfoByDivision pRribdOcdId_ =
  RepresentativesRepresentativeInfoByDivision'
    { _rribdXgafv = Nothing
    , _rribdRoles = Nothing
    , _rribdUploadProtocol = Nothing
    , _rribdAccessToken = Nothing
    , _rribdUploadType = Nothing
    , _rribdRecursive = Nothing
    , _rribdOcdId = pRribdOcdId_
    , _rribdLevels = Nothing
    , _rribdCallback = Nothing
    }


-- | V1 error format.
rribdXgafv :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Xgafv)
rribdXgafv
  = lens _rribdXgafv (\ s a -> s{_rribdXgafv = a})

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribdRoles :: Lens' RepresentativesRepresentativeInfoByDivision [RepresentativesRepresentativeInfoByDivisionRoles]
rribdRoles
  = lens _rribdRoles (\ s a -> s{_rribdRoles = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rribdUploadProtocol :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Text)
rribdUploadProtocol
  = lens _rribdUploadProtocol
      (\ s a -> s{_rribdUploadProtocol = a})

-- | OAuth access token.
rribdAccessToken :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Text)
rribdAccessToken
  = lens _rribdAccessToken
      (\ s a -> s{_rribdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rribdUploadType :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Text)
rribdUploadType
  = lens _rribdUploadType
      (\ s a -> s{_rribdUploadType = a})

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

-- | JSONP
rribdCallback :: Lens' RepresentativesRepresentativeInfoByDivision (Maybe Text)
rribdCallback
  = lens _rribdCallback
      (\ s a -> s{_rribdCallback = a})

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
          = go _rribdOcdId _rribdXgafv
              (_rribdRoles ^. _Default)
              _rribdUploadProtocol
              _rribdAccessToken
              _rribdUploadType
              _rribdRecursive
              (_rribdLevels ^. _Default)
              _rribdCallback
              (Just AltJSON)
              civicInfoService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByDivisionResource)
                      mempty
