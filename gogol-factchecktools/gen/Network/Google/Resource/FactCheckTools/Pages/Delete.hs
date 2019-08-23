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
-- Module      : Network.Google.Resource.FactCheckTools.Pages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete all \`ClaimReview\` markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.delete@.
module Network.Google.Resource.FactCheckTools.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteResource

    -- * Creating a Request
    , pagesDelete
    , PagesDelete

    -- * Request Lenses
    , pdXgafv
    , pdUploadProtocol
    , pdAccessToken
    , pdUploadType
    , pdName
    , pdCallback
    ) where

import           Network.Google.FactCheckTools.Types
import           Network.Google.Prelude

-- | A resource alias for @factchecktools.pages.delete@ method which the
-- 'PagesDelete' request conforms to.
type PagesDeleteResource =
     "v1alpha1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Delete all \`ClaimReview\` markup on a page.
--
-- /See:/ 'pagesDelete' smart constructor.
data PagesDelete =
  PagesDelete'
    { _pdXgafv          :: !(Maybe Xgafv)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdAccessToken    :: !(Maybe Text)
    , _pdUploadType     :: !(Maybe Text)
    , _pdName           :: !Text
    , _pdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdName'
--
-- * 'pdCallback'
pagesDelete
    :: Text -- ^ 'pdName'
    -> PagesDelete
pagesDelete pPdName_ =
  PagesDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdName = pPdName_
    , _pdCallback = Nothing
    }


-- | V1 error format.
pdXgafv :: Lens' PagesDelete (Maybe Xgafv)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' PagesDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | OAuth access token.
pdAccessToken :: Lens' PagesDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' PagesDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | The name of the resource to delete, in the form of \`pages\/{page_id}\`.
pdName :: Lens' PagesDelete Text
pdName = lens _pdName (\ s a -> s{_pdName = a})

-- | JSONP
pdCallback :: Lens' PagesDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest PagesDelete where
        type Rs PagesDelete = GoogleProtobufEmpty
        type Scopes PagesDelete =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient PagesDelete'{..}
          = go _pdName _pdXgafv _pdUploadProtocol
              _pdAccessToken
              _pdUploadType
              _pdCallback
              (Just AltJSON)
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy PagesDeleteResource)
                      mempty
