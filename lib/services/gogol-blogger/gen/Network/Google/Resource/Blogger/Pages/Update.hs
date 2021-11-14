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
-- Module      : Network.Google.Resource.Blogger.Pages.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a page by blog id and page id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.update@.
module Network.Google.Resource.Blogger.Pages.Update
    (
    -- * REST Resource
      PagesUpdateResource

    -- * Creating a Request
    , pagesUpdate
    , PagesUpdate

    -- * Request Lenses
    , puuXgafv
    , puuUploadProtocol
    , puuAccessToken
    , puuUploadType
    , puuBlogId
    , puuPageId
    , puuPayload
    , puuRevert
    , puuPublish
    , puuCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.update@ method which the
-- 'PagesUpdate' request conforms to.
type PagesUpdateResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             Capture "pageId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "revert" Bool :>
                         QueryParam "publish" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Page :> Put '[JSON] Page

-- | Updates a page by blog id and page id.
--
-- /See:/ 'pagesUpdate' smart constructor.
data PagesUpdate =
  PagesUpdate'
    { _puuXgafv :: !(Maybe Xgafv)
    , _puuUploadProtocol :: !(Maybe Text)
    , _puuAccessToken :: !(Maybe Text)
    , _puuUploadType :: !(Maybe Text)
    , _puuBlogId :: !Text
    , _puuPageId :: !Text
    , _puuPayload :: !Page
    , _puuRevert :: !(Maybe Bool)
    , _puuPublish :: !(Maybe Bool)
    , _puuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuXgafv'
--
-- * 'puuUploadProtocol'
--
-- * 'puuAccessToken'
--
-- * 'puuUploadType'
--
-- * 'puuBlogId'
--
-- * 'puuPageId'
--
-- * 'puuPayload'
--
-- * 'puuRevert'
--
-- * 'puuPublish'
--
-- * 'puuCallback'
pagesUpdate
    :: Text -- ^ 'puuBlogId'
    -> Text -- ^ 'puuPageId'
    -> Page -- ^ 'puuPayload'
    -> PagesUpdate
pagesUpdate pPuuBlogId_ pPuuPageId_ pPuuPayload_ =
  PagesUpdate'
    { _puuXgafv = Nothing
    , _puuUploadProtocol = Nothing
    , _puuAccessToken = Nothing
    , _puuUploadType = Nothing
    , _puuBlogId = pPuuBlogId_
    , _puuPageId = pPuuPageId_
    , _puuPayload = pPuuPayload_
    , _puuRevert = Nothing
    , _puuPublish = Nothing
    , _puuCallback = Nothing
    }


-- | V1 error format.
puuXgafv :: Lens' PagesUpdate (Maybe Xgafv)
puuXgafv = lens _puuXgafv (\ s a -> s{_puuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puuUploadProtocol :: Lens' PagesUpdate (Maybe Text)
puuUploadProtocol
  = lens _puuUploadProtocol
      (\ s a -> s{_puuUploadProtocol = a})

-- | OAuth access token.
puuAccessToken :: Lens' PagesUpdate (Maybe Text)
puuAccessToken
  = lens _puuAccessToken
      (\ s a -> s{_puuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puuUploadType :: Lens' PagesUpdate (Maybe Text)
puuUploadType
  = lens _puuUploadType
      (\ s a -> s{_puuUploadType = a})

puuBlogId :: Lens' PagesUpdate Text
puuBlogId
  = lens _puuBlogId (\ s a -> s{_puuBlogId = a})

puuPageId :: Lens' PagesUpdate Text
puuPageId
  = lens _puuPageId (\ s a -> s{_puuPageId = a})

-- | Multipart request metadata.
puuPayload :: Lens' PagesUpdate Page
puuPayload
  = lens _puuPayload (\ s a -> s{_puuPayload = a})

puuRevert :: Lens' PagesUpdate (Maybe Bool)
puuRevert
  = lens _puuRevert (\ s a -> s{_puuRevert = a})

puuPublish :: Lens' PagesUpdate (Maybe Bool)
puuPublish
  = lens _puuPublish (\ s a -> s{_puuPublish = a})

-- | JSONP
puuCallback :: Lens' PagesUpdate (Maybe Text)
puuCallback
  = lens _puuCallback (\ s a -> s{_puuCallback = a})

instance GoogleRequest PagesUpdate where
        type Rs PagesUpdate = Page
        type Scopes PagesUpdate =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesUpdate'{..}
          = go _puuBlogId _puuPageId _puuXgafv
              _puuUploadProtocol
              _puuAccessToken
              _puuUploadType
              _puuRevert
              _puuPublish
              _puuCallback
              (Just AltJSON)
              _puuPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesUpdateResource)
                      mempty
