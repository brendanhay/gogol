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
-- Module      : Network.Google.Resource.FactCheckTools.Pages.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update for all \`ClaimReview\` markup on a page Note that this is a full
-- update. To retain the existing \`ClaimReview\` markup on a page, first
-- perform a Get operation, then modify the returned markup, and finally
-- call Update with the entire \`ClaimReview\` markup as the body.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.update@.
module Network.Google.Resource.FactCheckTools.Pages.Update
    (
    -- * REST Resource
      PagesUpdateResource

    -- * Creating a Request
    , pagesUpdate
    , PagesUpdate

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puAccessToken
    , puUploadType
    , puPayload
    , puName
    , puCallback
    ) where

import Network.Google.FactCheckTools.Types
import Network.Google.Prelude

-- | A resource alias for @factchecktools.pages.update@ method which the
-- 'PagesUpdate' request conforms to.
type PagesUpdateResource =
     "v1alpha1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                       :>
                       Put '[JSON]
                         GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Update for all \`ClaimReview\` markup on a page Note that this is a full
-- update. To retain the existing \`ClaimReview\` markup on a page, first
-- perform a Get operation, then modify the returned markup, and finally
-- call Update with the entire \`ClaimReview\` markup as the body.
--
-- /See:/ 'pagesUpdate' smart constructor.
data PagesUpdate =
  PagesUpdate'
    { _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puPayload :: !GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    , _puName :: !Text
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puName'
--
-- * 'puCallback'
pagesUpdate
    :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage -- ^ 'puPayload'
    -> Text -- ^ 'puName'
    -> PagesUpdate
pagesUpdate pPuPayload_ pPuName_ =
  PagesUpdate'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puName = pPuName_
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' PagesUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PagesUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | OAuth access token.
puAccessToken :: Lens' PagesUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PagesUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' PagesUpdate GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | The name of this \`ClaimReview\` markup page resource, in the form of
-- \`pages\/{page_id}\`. Except for update requests, this field is
-- output-only and should not be set by the user.
puName :: Lens' PagesUpdate Text
puName = lens _puName (\ s a -> s{_puName = a})

-- | JSONP
puCallback :: Lens' PagesUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PagesUpdate where
        type Rs PagesUpdate =
             GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        type Scopes PagesUpdate =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient PagesUpdate'{..}
          = go _puName _puXgafv _puUploadProtocol
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              _puPayload
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy PagesUpdateResource)
                      mempty
