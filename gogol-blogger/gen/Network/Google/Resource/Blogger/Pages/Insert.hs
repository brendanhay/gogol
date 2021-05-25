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
-- Module      : Network.Google.Resource.Blogger.Pages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.insert@.
module Network.Google.Resource.Blogger.Pages.Insert
    (
    -- * REST Resource
      PagesInsertResource

    -- * Creating a Request
    , pagesInsert
    , PagesInsert

    -- * Request Lenses
    , piXgafv
    , piIsDraft
    , piUploadProtocol
    , piAccessToken
    , piUploadType
    , piBlogId
    , piPayload
    , piCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.insert@ method which the
-- 'PagesInsert' request conforms to.
type PagesInsertResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "isDraft" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Page :> Post '[JSON] Page

-- | Inserts a page.
--
-- /See:/ 'pagesInsert' smart constructor.
data PagesInsert =
  PagesInsert'
    { _piXgafv :: !(Maybe Xgafv)
    , _piIsDraft :: !(Maybe Bool)
    , _piUploadProtocol :: !(Maybe Text)
    , _piAccessToken :: !(Maybe Text)
    , _piUploadType :: !(Maybe Text)
    , _piBlogId :: !Text
    , _piPayload :: !Page
    , _piCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piXgafv'
--
-- * 'piIsDraft'
--
-- * 'piUploadProtocol'
--
-- * 'piAccessToken'
--
-- * 'piUploadType'
--
-- * 'piBlogId'
--
-- * 'piPayload'
--
-- * 'piCallback'
pagesInsert
    :: Text -- ^ 'piBlogId'
    -> Page -- ^ 'piPayload'
    -> PagesInsert
pagesInsert pPiBlogId_ pPiPayload_ =
  PagesInsert'
    { _piXgafv = Nothing
    , _piIsDraft = Nothing
    , _piUploadProtocol = Nothing
    , _piAccessToken = Nothing
    , _piUploadType = Nothing
    , _piBlogId = pPiBlogId_
    , _piPayload = pPiPayload_
    , _piCallback = Nothing
    }


-- | V1 error format.
piXgafv :: Lens' PagesInsert (Maybe Xgafv)
piXgafv = lens _piXgafv (\ s a -> s{_piXgafv = a})

piIsDraft :: Lens' PagesInsert (Maybe Bool)
piIsDraft
  = lens _piIsDraft (\ s a -> s{_piIsDraft = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piUploadProtocol :: Lens' PagesInsert (Maybe Text)
piUploadProtocol
  = lens _piUploadProtocol
      (\ s a -> s{_piUploadProtocol = a})

-- | OAuth access token.
piAccessToken :: Lens' PagesInsert (Maybe Text)
piAccessToken
  = lens _piAccessToken
      (\ s a -> s{_piAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piUploadType :: Lens' PagesInsert (Maybe Text)
piUploadType
  = lens _piUploadType (\ s a -> s{_piUploadType = a})

piBlogId :: Lens' PagesInsert Text
piBlogId = lens _piBlogId (\ s a -> s{_piBlogId = a})

-- | Multipart request metadata.
piPayload :: Lens' PagesInsert Page
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | JSONP
piCallback :: Lens' PagesInsert (Maybe Text)
piCallback
  = lens _piCallback (\ s a -> s{_piCallback = a})

instance GoogleRequest PagesInsert where
        type Rs PagesInsert = Page
        type Scopes PagesInsert =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesInsert'{..}
          = go _piBlogId _piXgafv _piIsDraft _piUploadProtocol
              _piAccessToken
              _piUploadType
              _piCallback
              (Just AltJSON)
              _piPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesInsertResource)
                      mempty
