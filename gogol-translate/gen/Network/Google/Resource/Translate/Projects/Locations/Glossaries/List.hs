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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.Glossaries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists glossaries in a project. Returns NOT_FOUND, if the project
-- doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.list@.
module Network.Google.Resource.Translate.Projects.Locations.Glossaries.List
    (
    -- * REST Resource
      ProjectsLocationsGlossariesListResource

    -- * Creating a Request
    , projectsLocationsGlossariesList
    , ProjectsLocationsGlossariesList

    -- * Request Lenses
    , plglParent
    , plglXgafv
    , plglUploadProtocol
    , plglAccessToken
    , plglUploadType
    , plglFilter
    , plglPageToken
    , plglPageSize
    , plglCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.list@ method which the
-- 'ProjectsLocationsGlossariesList' request conforms to.
type ProjectsLocationsGlossariesListResource =
     "v3" :>
       Capture "parent" Text :>
         "glossaries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListGlossariesResponse

-- | Lists glossaries in a project. Returns NOT_FOUND, if the project
-- doesn\'t exist.
--
-- /See:/ 'projectsLocationsGlossariesList' smart constructor.
data ProjectsLocationsGlossariesList =
  ProjectsLocationsGlossariesList'
    { _plglParent :: !Text
    , _plglXgafv :: !(Maybe Xgafv)
    , _plglUploadProtocol :: !(Maybe Text)
    , _plglAccessToken :: !(Maybe Text)
    , _plglUploadType :: !(Maybe Text)
    , _plglFilter :: !(Maybe Text)
    , _plglPageToken :: !(Maybe Text)
    , _plglPageSize :: !(Maybe (Textual Int32))
    , _plglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGlossariesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plglParent'
--
-- * 'plglXgafv'
--
-- * 'plglUploadProtocol'
--
-- * 'plglAccessToken'
--
-- * 'plglUploadType'
--
-- * 'plglFilter'
--
-- * 'plglPageToken'
--
-- * 'plglPageSize'
--
-- * 'plglCallback'
projectsLocationsGlossariesList
    :: Text -- ^ 'plglParent'
    -> ProjectsLocationsGlossariesList
projectsLocationsGlossariesList pPlglParent_ =
  ProjectsLocationsGlossariesList'
    { _plglParent = pPlglParent_
    , _plglXgafv = Nothing
    , _plglUploadProtocol = Nothing
    , _plglAccessToken = Nothing
    , _plglUploadType = Nothing
    , _plglFilter = Nothing
    , _plglPageToken = Nothing
    , _plglPageSize = Nothing
    , _plglCallback = Nothing
    }


-- | Required. The name of the project from which to list all of the
-- glossaries.
plglParent :: Lens' ProjectsLocationsGlossariesList Text
plglParent
  = lens _plglParent (\ s a -> s{_plglParent = a})

-- | V1 error format.
plglXgafv :: Lens' ProjectsLocationsGlossariesList (Maybe Xgafv)
plglXgafv
  = lens _plglXgafv (\ s a -> s{_plglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plglUploadProtocol :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglUploadProtocol
  = lens _plglUploadProtocol
      (\ s a -> s{_plglUploadProtocol = a})

-- | OAuth access token.
plglAccessToken :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglAccessToken
  = lens _plglAccessToken
      (\ s a -> s{_plglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plglUploadType :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglUploadType
  = lens _plglUploadType
      (\ s a -> s{_plglUploadType = a})

-- | Optional. Filter specifying constraints of a list operation. Specify the
-- constraint by the format of \"key=value\", where key must be \"src\" or
-- \"tgt\", and the value must be a valid language code. For multiple
-- restrictions, concatenate them by \"AND\" (uppercase only), such as:
-- \"src=en-US AND tgt=zh-CN\". Notice that the exact match is used here,
-- which means using \'en-US\' and \'en\' can lead to different results,
-- which depends on the language code you used when you create the
-- glossary. For the unidirectional glossaries, the \"src\" and \"tgt\" add
-- restrictions on the source and target language code separately. For the
-- equivalent term set glossaries, the \"src\" and\/or \"tgt\" add
-- restrictions on the term set. For example: \"src=en-US AND tgt=zh-CN\"
-- will only pick the unidirectional glossaries which exactly match the
-- source language code as \"en-US\" and the target language code
-- \"zh-CN\", but all equivalent term set glossaries which contain
-- \"en-US\" and \"zh-CN\" in their language set will be picked. If
-- missing, no filtering is performed.
plglFilter :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglFilter
  = lens _plglFilter (\ s a -> s{_plglFilter = a})

-- | Optional. A token identifying a page of results the server should
-- return. Typically, this is the value of
-- [ListGlossariesResponse.next_page_token] returned from the previous call
-- to \`ListGlossaries\` method. The first page is returned if
-- \`page_token\`is empty or missing.
plglPageToken :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglPageToken
  = lens _plglPageToken
      (\ s a -> s{_plglPageToken = a})

-- | Optional. Requested page size. The server may return fewer glossaries
-- than requested. If unspecified, the server picks an appropriate default.
plglPageSize :: Lens' ProjectsLocationsGlossariesList (Maybe Int32)
plglPageSize
  = lens _plglPageSize (\ s a -> s{_plglPageSize = a})
      . mapping _Coerce

-- | JSONP
plglCallback :: Lens' ProjectsLocationsGlossariesList (Maybe Text)
plglCallback
  = lens _plglCallback (\ s a -> s{_plglCallback = a})

instance GoogleRequest
           ProjectsLocationsGlossariesList
         where
        type Rs ProjectsLocationsGlossariesList =
             ListGlossariesResponse
        type Scopes ProjectsLocationsGlossariesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsGlossariesList'{..}
          = go _plglParent _plglXgafv _plglUploadProtocol
              _plglAccessToken
              _plglUploadType
              _plglFilter
              _plglPageToken
              _plglPageSize
              _plglCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGlossariesListResource)
                      mempty
