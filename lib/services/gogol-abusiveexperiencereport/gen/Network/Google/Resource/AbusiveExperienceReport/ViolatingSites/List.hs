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
-- Module      : Network.Google.Resource.AbusiveExperienceReport.ViolatingSites.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sites that are failing in the Abusive Experience Report.
--
-- /See:/ <https://developers.google.com/abusive-experience-report/ Abusive Experience Report API Reference> for @abusiveexperiencereport.violatingSites.list@.
module Network.Google.Resource.AbusiveExperienceReport.ViolatingSites.List
    (
    -- * REST Resource
      ViolatingSitesListResource

    -- * Creating a Request
    , violatingSitesList
    , ViolatingSitesList

    -- * Request Lenses
    , vslXgafv
    , vslUploadProtocol
    , vslAccessToken
    , vslUploadType
    , vslCallback
    ) where

import Network.Google.AbusiveExperienceReport.Types
import Network.Google.Prelude

-- | A resource alias for @abusiveexperiencereport.violatingSites.list@ method which the
-- 'ViolatingSitesList' request conforms to.
type ViolatingSitesListResource =
     "v1" :>
       "violatingSites" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ViolatingSitesResponse

-- | Lists sites that are failing in the Abusive Experience Report.
--
-- /See:/ 'violatingSitesList' smart constructor.
data ViolatingSitesList =
  ViolatingSitesList'
    { _vslXgafv :: !(Maybe Xgafv)
    , _vslUploadProtocol :: !(Maybe Text)
    , _vslAccessToken :: !(Maybe Text)
    , _vslUploadType :: !(Maybe Text)
    , _vslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ViolatingSitesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vslXgafv'
--
-- * 'vslUploadProtocol'
--
-- * 'vslAccessToken'
--
-- * 'vslUploadType'
--
-- * 'vslCallback'
violatingSitesList
    :: ViolatingSitesList
violatingSitesList =
  ViolatingSitesList'
    { _vslXgafv = Nothing
    , _vslUploadProtocol = Nothing
    , _vslAccessToken = Nothing
    , _vslUploadType = Nothing
    , _vslCallback = Nothing
    }


-- | V1 error format.
vslXgafv :: Lens' ViolatingSitesList (Maybe Xgafv)
vslXgafv = lens _vslXgafv (\ s a -> s{_vslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vslUploadProtocol :: Lens' ViolatingSitesList (Maybe Text)
vslUploadProtocol
  = lens _vslUploadProtocol
      (\ s a -> s{_vslUploadProtocol = a})

-- | OAuth access token.
vslAccessToken :: Lens' ViolatingSitesList (Maybe Text)
vslAccessToken
  = lens _vslAccessToken
      (\ s a -> s{_vslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vslUploadType :: Lens' ViolatingSitesList (Maybe Text)
vslUploadType
  = lens _vslUploadType
      (\ s a -> s{_vslUploadType = a})

-- | JSONP
vslCallback :: Lens' ViolatingSitesList (Maybe Text)
vslCallback
  = lens _vslCallback (\ s a -> s{_vslCallback = a})

instance GoogleRequest ViolatingSitesList where
        type Rs ViolatingSitesList = ViolatingSitesResponse
        type Scopes ViolatingSitesList = '[]
        requestClient ViolatingSitesList'{..}
          = go _vslXgafv _vslUploadProtocol _vslAccessToken
              _vslUploadType
              _vslCallback
              (Just AltJSON)
              abusiveExperienceReportService
          where go
                  = buildClient
                      (Proxy :: Proxy ViolatingSitesListResource)
                      mempty
