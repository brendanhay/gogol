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
-- Module      : Network.Google.Resource.Blogger.Pages.Publish
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.publish@.
module Network.Google.Resource.Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishResource

    -- * Creating a Request
    , pagesPublish
    , PagesPublish

    -- * Request Lenses
    , pagaXgafv
    , pagaUploadProtocol
    , pagaAccessToken
    , pagaUploadType
    , pagaBlogId
    , pagaPageId
    , pagaCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.publish@ method which the
-- 'PagesPublish' request conforms to.
type PagesPublishResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               "publish" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Publishes a page.
--
-- /See:/ 'pagesPublish' smart constructor.
data PagesPublish =
  PagesPublish'
    { _pagaXgafv :: !(Maybe Xgafv)
    , _pagaUploadProtocol :: !(Maybe Text)
    , _pagaAccessToken :: !(Maybe Text)
    , _pagaUploadType :: !(Maybe Text)
    , _pagaBlogId :: !Text
    , _pagaPageId :: !Text
    , _pagaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagaXgafv'
--
-- * 'pagaUploadProtocol'
--
-- * 'pagaAccessToken'
--
-- * 'pagaUploadType'
--
-- * 'pagaBlogId'
--
-- * 'pagaPageId'
--
-- * 'pagaCallback'
pagesPublish
    :: Text -- ^ 'pagaBlogId'
    -> Text -- ^ 'pagaPageId'
    -> PagesPublish
pagesPublish pPagaBlogId_ pPagaPageId_ =
  PagesPublish'
    { _pagaXgafv = Nothing
    , _pagaUploadProtocol = Nothing
    , _pagaAccessToken = Nothing
    , _pagaUploadType = Nothing
    , _pagaBlogId = pPagaBlogId_
    , _pagaPageId = pPagaPageId_
    , _pagaCallback = Nothing
    }


-- | V1 error format.
pagaXgafv :: Lens' PagesPublish (Maybe Xgafv)
pagaXgafv
  = lens _pagaXgafv (\ s a -> s{_pagaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pagaUploadProtocol :: Lens' PagesPublish (Maybe Text)
pagaUploadProtocol
  = lens _pagaUploadProtocol
      (\ s a -> s{_pagaUploadProtocol = a})

-- | OAuth access token.
pagaAccessToken :: Lens' PagesPublish (Maybe Text)
pagaAccessToken
  = lens _pagaAccessToken
      (\ s a -> s{_pagaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pagaUploadType :: Lens' PagesPublish (Maybe Text)
pagaUploadType
  = lens _pagaUploadType
      (\ s a -> s{_pagaUploadType = a})

pagaBlogId :: Lens' PagesPublish Text
pagaBlogId
  = lens _pagaBlogId (\ s a -> s{_pagaBlogId = a})

pagaPageId :: Lens' PagesPublish Text
pagaPageId
  = lens _pagaPageId (\ s a -> s{_pagaPageId = a})

-- | JSONP
pagaCallback :: Lens' PagesPublish (Maybe Text)
pagaCallback
  = lens _pagaCallback (\ s a -> s{_pagaCallback = a})

instance GoogleRequest PagesPublish where
        type Rs PagesPublish = Page
        type Scopes PagesPublish =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesPublish'{..}
          = go _pagaBlogId _pagaPageId _pagaXgafv
              _pagaUploadProtocol
              _pagaAccessToken
              _pagaUploadType
              _pagaCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPublishResource)
                      mempty
