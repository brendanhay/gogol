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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Commit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new TemplateVersion (Important: not new Template) entry in the
-- spanner table. Requires project_id and display_name (template).
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.commit@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Commit
    (
    -- * REST Resource
      ProjectsCatalogTemplatesCommitResource

    -- * Creating a Request
    , projectsCatalogTemplatesCommit
    , ProjectsCatalogTemplatesCommit

    -- * Request Lenses
    , pctcXgafv
    , pctcUploadProtocol
    , pctcAccessToken
    , pctcUploadType
    , pctcPayload
    , pctcName
    , pctcCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.commit@ method which the
-- 'ProjectsCatalogTemplatesCommit' request conforms to.
type ProjectsCatalogTemplatesCommitResource =
     "v1b3" :>
       CaptureMode "name" "commit" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CommitTemplateVersionRequest :>
                       Post '[JSON] TemplateVersion

-- | Creates a new TemplateVersion (Important: not new Template) entry in the
-- spanner table. Requires project_id and display_name (template).
--
-- /See:/ 'projectsCatalogTemplatesCommit' smart constructor.
data ProjectsCatalogTemplatesCommit =
  ProjectsCatalogTemplatesCommit'
    { _pctcXgafv :: !(Maybe Xgafv)
    , _pctcUploadProtocol :: !(Maybe Text)
    , _pctcAccessToken :: !(Maybe Text)
    , _pctcUploadType :: !(Maybe Text)
    , _pctcPayload :: !CommitTemplateVersionRequest
    , _pctcName :: !Text
    , _pctcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pctcXgafv'
--
-- * 'pctcUploadProtocol'
--
-- * 'pctcAccessToken'
--
-- * 'pctcUploadType'
--
-- * 'pctcPayload'
--
-- * 'pctcName'
--
-- * 'pctcCallback'
projectsCatalogTemplatesCommit
    :: CommitTemplateVersionRequest -- ^ 'pctcPayload'
    -> Text -- ^ 'pctcName'
    -> ProjectsCatalogTemplatesCommit
projectsCatalogTemplatesCommit pPctcPayload_ pPctcName_ =
  ProjectsCatalogTemplatesCommit'
    { _pctcXgafv = Nothing
    , _pctcUploadProtocol = Nothing
    , _pctcAccessToken = Nothing
    , _pctcUploadType = Nothing
    , _pctcPayload = pPctcPayload_
    , _pctcName = pPctcName_
    , _pctcCallback = Nothing
    }


-- | V1 error format.
pctcXgafv :: Lens' ProjectsCatalogTemplatesCommit (Maybe Xgafv)
pctcXgafv
  = lens _pctcXgafv (\ s a -> s{_pctcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pctcUploadProtocol :: Lens' ProjectsCatalogTemplatesCommit (Maybe Text)
pctcUploadProtocol
  = lens _pctcUploadProtocol
      (\ s a -> s{_pctcUploadProtocol = a})

-- | OAuth access token.
pctcAccessToken :: Lens' ProjectsCatalogTemplatesCommit (Maybe Text)
pctcAccessToken
  = lens _pctcAccessToken
      (\ s a -> s{_pctcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pctcUploadType :: Lens' ProjectsCatalogTemplatesCommit (Maybe Text)
pctcUploadType
  = lens _pctcUploadType
      (\ s a -> s{_pctcUploadType = a})

-- | Multipart request metadata.
pctcPayload :: Lens' ProjectsCatalogTemplatesCommit CommitTemplateVersionRequest
pctcPayload
  = lens _pctcPayload (\ s a -> s{_pctcPayload = a})

-- | The location of the template, name includes project_id and display_name.
-- Commit using project_id(pid1) and display_name(tid1). Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1}
pctcName :: Lens' ProjectsCatalogTemplatesCommit Text
pctcName = lens _pctcName (\ s a -> s{_pctcName = a})

-- | JSONP
pctcCallback :: Lens' ProjectsCatalogTemplatesCommit (Maybe Text)
pctcCallback
  = lens _pctcCallback (\ s a -> s{_pctcCallback = a})

instance GoogleRequest ProjectsCatalogTemplatesCommit
         where
        type Rs ProjectsCatalogTemplatesCommit =
             TemplateVersion
        type Scopes ProjectsCatalogTemplatesCommit =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsCatalogTemplatesCommit'{..}
          = go _pctcName _pctcXgafv _pctcUploadProtocol
              _pctcAccessToken
              _pctcUploadType
              _pctcCallback
              (Just AltJSON)
              _pctcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsCatalogTemplatesCommitResource)
                      mempty
