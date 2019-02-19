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
-- Module      : Network.Google.Resource.AdExperienceReport.Sites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a summary of the ad experience rating of a site.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference> for @adexperiencereport.sites.get@.
module Network.Google.Resource.AdExperienceReport.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgName
    , sgCallback
    ) where

import           Network.Google.AdExperienceReport.Types
import           Network.Google.Prelude

-- | A resource alias for @adexperiencereport.sites.get@ method which the
-- 'SitesGet' request conforms to.
type SitesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SiteSummaryResponse

-- | Gets a summary of the ad experience rating of a site.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet =
  SitesGet'
    { _sgXgafv          :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken    :: !(Maybe Text)
    , _sgUploadType     :: !(Maybe Text)
    , _sgName           :: !Text
    , _sgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgName'
--
-- * 'sgCallback'
sitesGet
    :: Text -- ^ 'sgName'
    -> SitesGet
sitesGet pSgName_ =
  SitesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgName = pSgName_
    , _sgCallback = Nothing
    }

-- | V1 error format.
sgXgafv :: Lens' SitesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SitesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SitesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SitesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | The required site name. It should be the site property whose ad
-- experiences may have been reviewed, and it should be URL-encoded. For
-- example, sites\/https%3A%2F%2Fwww.google.com. The server will return an
-- error of BAD_REQUEST if this field is not filled in. Note that if the
-- site property is not yet verified in Search Console, the reportUrl field
-- returned by the API will lead to the verification page, prompting the
-- user to go through that process before they can gain access to the Ad
-- Experience Report.
sgName :: Lens' SitesGet Text
sgName = lens _sgName (\ s a -> s{_sgName = a})

-- | JSONP
sgCallback :: Lens' SitesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SitesGet where
        type Rs SitesGet = SiteSummaryResponse
        type Scopes SitesGet =
             '["https://www.googleapis.com/auth/xapi.zoo"]
        requestClient SitesGet'{..}
          = go _sgName _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              adExperienceReportService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
