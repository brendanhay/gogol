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
-- Module      : Network.Google.Resource.Blogger.Pages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists pages.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pages.list@.
module Network.Google.Resource.Blogger.Pages.List
    (
    -- * REST Resource
      PagesListResource

    -- * Creating a Request
    , pagesList
    , PagesList

    -- * Request Lenses
    , plStatus
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plBlogId
    , plFetchBodies
    , plView
    , plPageToken
    , plMaxResults
    , plCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pages.list@ method which the
-- 'PagesList' request conforms to.
type PagesListResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pages" :>
             QueryParams "status" PagesListStatus :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "fetchBodies" Bool :>
                         QueryParam "view" PagesListView :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] PageList

-- | Lists pages.
--
-- /See:/ 'pagesList' smart constructor.
data PagesList =
  PagesList'
    { _plStatus :: !(Maybe [PagesListStatus])
    , _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plBlogId :: !Text
    , _plFetchBodies :: !(Maybe Bool)
    , _plView :: !(Maybe PagesListView)
    , _plPageToken :: !(Maybe Text)
    , _plMaxResults :: !(Maybe (Textual Word32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plStatus'
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plBlogId'
--
-- * 'plFetchBodies'
--
-- * 'plView'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
--
-- * 'plCallback'
pagesList
    :: Text -- ^ 'plBlogId'
    -> PagesList
pagesList pPlBlogId_ =
  PagesList'
    { _plStatus = Nothing
    , _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plBlogId = pPlBlogId_
    , _plFetchBodies = Nothing
    , _plView = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    , _plCallback = Nothing
    }


plStatus :: Lens' PagesList [PagesListStatus]
plStatus
  = lens _plStatus (\ s a -> s{_plStatus = a}) .
      _Default
      . _Coerce

-- | V1 error format.
plXgafv :: Lens' PagesList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PagesList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' PagesList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PagesList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

plBlogId :: Lens' PagesList Text
plBlogId = lens _plBlogId (\ s a -> s{_plBlogId = a})

plFetchBodies :: Lens' PagesList (Maybe Bool)
plFetchBodies
  = lens _plFetchBodies
      (\ s a -> s{_plFetchBodies = a})

plView :: Lens' PagesList (Maybe PagesListView)
plView = lens _plView (\ s a -> s{_plView = a})

plPageToken :: Lens' PagesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

plMaxResults :: Lens' PagesList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

-- | JSONP
plCallback :: Lens' PagesList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PagesList where
        type Rs PagesList = PageList
        type Scopes PagesList =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PagesList'{..}
          = go _plBlogId (_plStatus ^. _Default) _plXgafv
              _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plFetchBodies
              _plView
              _plPageToken
              _plMaxResults
              _plCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesListResource)
                      mempty
