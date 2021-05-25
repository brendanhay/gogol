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
-- Module      : Network.Google.Resource.FactCheckTools.Pages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the \`ClaimReview\` markup pages for a specific URL or for an
-- organization.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.list@.
module Network.Google.Resource.FactCheckTools.Pages.List
    (
    -- * REST Resource
      PagesListResource

    -- * Creating a Request
    , pagesList
    , PagesList

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plOffSet
    , plAccessToken
    , plURL
    , plUploadType
    , plPageToken
    , plOrganization
    , plPageSize
    , plCallback
    ) where

import Network.Google.FactCheckTools.Types
import Network.Google.Prelude

-- | A resource alias for @factchecktools.pages.list@ method which the
-- 'PagesList' request conforms to.
type PagesListResource =
     "v1alpha1" :>
       "pages" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "offset" (Textual Int32) :>
               QueryParam "access_token" Text :>
                 QueryParam "url" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "organization" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse

-- | List the \`ClaimReview\` markup pages for a specific URL or for an
-- organization.
--
-- /See:/ 'pagesList' smart constructor.
data PagesList =
  PagesList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plOffSet :: !(Maybe (Textual Int32))
    , _plAccessToken :: !(Maybe Text)
    , _plURL :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plPageToken :: !(Maybe Text)
    , _plOrganization :: !(Maybe Text)
    , _plPageSize :: !(Maybe (Textual Int32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plOffSet'
--
-- * 'plAccessToken'
--
-- * 'plURL'
--
-- * 'plUploadType'
--
-- * 'plPageToken'
--
-- * 'plOrganization'
--
-- * 'plPageSize'
--
-- * 'plCallback'
pagesList
    :: PagesList
pagesList =
  PagesList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plOffSet = Nothing
    , _plAccessToken = Nothing
    , _plURL = Nothing
    , _plUploadType = Nothing
    , _plPageToken = Nothing
    , _plOrganization = Nothing
    , _plPageSize = Nothing
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' PagesList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PagesList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | An integer that specifies the current offset (that is, starting result
-- location) in search results. This field is only considered if
-- \`page_token\` is unset, and if the request is not for a specific URL.
-- For example, 0 means to return results starting from the first matching
-- result, and 10 means to return from the 11th result.
plOffSet :: Lens' PagesList (Maybe Int32)
plOffSet
  = lens _plOffSet (\ s a -> s{_plOffSet = a}) .
      mapping _Coerce

-- | OAuth access token.
plAccessToken :: Lens' PagesList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | The URL from which to get \`ClaimReview\` markup. There will be at most
-- one result. If markup is associated with a more canonical version of the
-- URL provided, we will return that URL instead. Cannot be specified along
-- with an organization.
plURL :: Lens' PagesList (Maybe Text)
plURL = lens _plURL (\ s a -> s{_plURL = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PagesList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | The pagination token. You may provide the \`next_page_token\` returned
-- from a previous List request, if any, in order to get the next page. All
-- other fields must have the same values as in the previous request.
plPageToken :: Lens' PagesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The organization for which we want to fetch markups for. For instance,
-- \"site.com\". Cannot be specified along with an URL.
plOrganization :: Lens' PagesList (Maybe Text)
plOrganization
  = lens _plOrganization
      (\ s a -> s{_plOrganization = a})

-- | The pagination size. We will return up to that many results. Defaults to
-- 10 if not set. Has no effect if a URL is requested.
plPageSize :: Lens' PagesList (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a}) .
      mapping _Coerce

-- | JSONP
plCallback :: Lens' PagesList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PagesList where
        type Rs PagesList =
             GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
        type Scopes PagesList =
             '["https://www.googleapis.com/auth/userinfo.email"]
        requestClient PagesList'{..}
          = go _plXgafv _plUploadProtocol _plOffSet
              _plAccessToken
              _plURL
              _plUploadType
              _plPageToken
              _plOrganization
              _plPageSize
              _plCallback
              (Just AltJSON)
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy PagesListResource)
                      mempty
