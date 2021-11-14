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
-- Module      : Network.Google.Resource.CloudResourceManager.Liens.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Liens applied to the \`parent\` resource. Callers of this
-- method will require permission on the \`parent\` resource. For example,
-- a Lien with a \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.get\`.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.list@.
module Network.Google.Resource.CloudResourceManager.Liens.List
    (
    -- * REST Resource
      LiensListResource

    -- * Creating a Request
    , liensList
    , LiensList

    -- * Request Lenses
    , llParent
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llUploadType
    , llPageToken
    , llPageSize
    , llCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.list@ method which the
-- 'LiensList' request conforms to.
type LiensListResource =
     "v3" :>
       "liens" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListLiensResponse

-- | List all Liens applied to the \`parent\` resource. Callers of this
-- method will require permission on the \`parent\` resource. For example,
-- a Lien with a \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.get\`.
--
-- /See:/ 'liensList' smart constructor.
data LiensList =
  LiensList'
    { _llParent :: !(Maybe Text)
    , _llXgafv :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken :: !(Maybe Text)
    , _llUploadType :: !(Maybe Text)
    , _llPageToken :: !(Maybe Text)
    , _llPageSize :: !(Maybe (Textual Int32))
    , _llCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiensList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llParent'
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llPageToken'
--
-- * 'llPageSize'
--
-- * 'llCallback'
liensList
    :: LiensList
liensList =
  LiensList'
    { _llParent = Nothing
    , _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llPageToken = Nothing
    , _llPageSize = Nothing
    , _llCallback = Nothing
    }


-- | Required. The name of the resource to list all attached Liens. For
-- example, \`projects\/1234\`. (google.api.field_policy).resource_type
-- annotation is not set since the parent depends on the meta api
-- implementation. This field could be a project or other sub project
-- resources.
llParent :: Lens' LiensList (Maybe Text)
llParent = lens _llParent (\ s a -> s{_llParent = a})

-- | V1 error format.
llXgafv :: Lens' LiensList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LiensList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | OAuth access token.
llAccessToken :: Lens' LiensList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LiensList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | The \`next_page_token\` value returned from a previous List request, if
-- any.
llPageToken :: Lens' LiensList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The maximum number of items to return. This is a suggestion for the
-- server.
llPageSize :: Lens' LiensList (Maybe Int32)
llPageSize
  = lens _llPageSize (\ s a -> s{_llPageSize = a}) .
      mapping _Coerce

-- | JSONP
llCallback :: Lens' LiensList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LiensList where
        type Rs LiensList = ListLiensResponse
        type Scopes LiensList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient LiensList'{..}
          = go _llParent _llXgafv _llUploadProtocol
              _llAccessToken
              _llUploadType
              _llPageToken
              _llPageSize
              _llCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy LiensListResource)
                      mempty
