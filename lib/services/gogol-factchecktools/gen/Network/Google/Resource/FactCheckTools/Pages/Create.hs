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
-- Module      : Network.Google.Resource.FactCheckTools.Pages.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create \`ClaimReview\` markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.create@.
module Network.Google.Resource.FactCheckTools.Pages.Create
    (
    -- * REST Resource
      PagesCreateResource

    -- * Creating a Request
    , pagesCreate
    , PagesCreate

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcCallback
    ) where

import Network.Google.FactCheckTools.Types
import Network.Google.Prelude

-- | A resource alias for @factchecktools.pages.create@ method which the
-- 'PagesCreate' request conforms to.
type PagesCreateResource =
     "v1alpha1" :>
       "pages" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                       :>
                       Post '[JSON]
                         GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Create \`ClaimReview\` markup on a page.
--
-- /See:/ 'pagesCreate' smart constructor.
data PagesCreate =
  PagesCreate'
    { _pcXgafv :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcAccessToken :: !(Maybe Text)
    , _pcUploadType :: !(Maybe Text)
    , _pcPayload :: !GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , _pcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcCallback'
pagesCreate
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage -- ^ 'pcPayload'
    -> PagesCreate
pagesCreate pPcPayload_ =
  PagesCreate'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcCallback = Nothing
    }


-- | V1 error format.
pcXgafv :: Lens' PagesCreate (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' PagesCreate (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | OAuth access token.
pcAccessToken :: Lens' PagesCreate (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' PagesCreate (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' PagesCreate GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | JSONP
pcCallback :: Lens' PagesCreate (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest PagesCreate where
        type Rs PagesCreate =
             GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        type Scopes PagesCreate =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient PagesCreate'{..}
          = go _pcXgafv _pcUploadProtocol _pcAccessToken
              _pcUploadType
              _pcCallback
              (Just AltJSON)
              _pcPayload
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy PagesCreateResource)
                      mempty
