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
-- Module      : Network.Google.Resource.FactCheckTools.Pages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all \`ClaimReview\` markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.get@.
module Network.Google.Resource.FactCheckTools.Pages.Get
    (
    -- * REST Resource
      PagesGetResource

    -- * Creating a Request
    , pagesGet
    , PagesGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgName
    , pgCallback
    ) where

import Network.Google.FactCheckTools.Types
import Network.Google.Prelude

-- | A resource alias for @factchecktools.pages.get@ method which the
-- 'PagesGet' request conforms to.
type PagesGetResource =
     "v1alpha1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Get all \`ClaimReview\` markup on a page.
--
-- /See:/ 'pagesGet' smart constructor.
data PagesGet =
  PagesGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgName :: !Text
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgName'
--
-- * 'pgCallback'
pagesGet
    :: Text -- ^ 'pgName'
    -> PagesGet
pagesGet pPgName_ =
  PagesGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgName = pPgName_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PagesGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PagesGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PagesGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PagesGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | The name of the resource to get, in the form of \`pages\/{page_id}\`.
pgName :: Lens' PagesGet Text
pgName = lens _pgName (\ s a -> s{_pgName = a})

-- | JSONP
pgCallback :: Lens' PagesGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PagesGet where
        type Rs PagesGet =
             GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        type Scopes PagesGet =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient PagesGet'{..}
          = go _pgName _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgCallback
              (Just AltJSON)
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy PagesGetResource)
                      mempty
