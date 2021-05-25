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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.create@.
module Network.Google.Resource.PubSub.Projects.Schemas.Create
    (
    -- * REST Resource
      ProjectsSchemasCreateResource

    -- * Creating a Request
    , projectsSchemasCreate
    , ProjectsSchemasCreate

    -- * Request Lenses
    , pscsParent
    , pscsXgafv
    , pscsUploadProtocol
    , pscsAccessToken
    , pscsUploadType
    , pscsPayload
    , pscsSchemaId
    , pscsCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.create@ method which the
-- 'ProjectsSchemasCreate' request conforms to.
type ProjectsSchemasCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "schemas" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "schemaId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Schema :> Post '[JSON] Schema

-- | Creates a schema.
--
-- /See:/ 'projectsSchemasCreate' smart constructor.
data ProjectsSchemasCreate =
  ProjectsSchemasCreate'
    { _pscsParent :: !Text
    , _pscsXgafv :: !(Maybe Xgafv)
    , _pscsUploadProtocol :: !(Maybe Text)
    , _pscsAccessToken :: !(Maybe Text)
    , _pscsUploadType :: !(Maybe Text)
    , _pscsPayload :: !Schema
    , _pscsSchemaId :: !(Maybe Text)
    , _pscsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsParent'
--
-- * 'pscsXgafv'
--
-- * 'pscsUploadProtocol'
--
-- * 'pscsAccessToken'
--
-- * 'pscsUploadType'
--
-- * 'pscsPayload'
--
-- * 'pscsSchemaId'
--
-- * 'pscsCallback'
projectsSchemasCreate
    :: Text -- ^ 'pscsParent'
    -> Schema -- ^ 'pscsPayload'
    -> ProjectsSchemasCreate
projectsSchemasCreate pPscsParent_ pPscsPayload_ =
  ProjectsSchemasCreate'
    { _pscsParent = pPscsParent_
    , _pscsXgafv = Nothing
    , _pscsUploadProtocol = Nothing
    , _pscsAccessToken = Nothing
    , _pscsUploadType = Nothing
    , _pscsPayload = pPscsPayload_
    , _pscsSchemaId = Nothing
    , _pscsCallback = Nothing
    }


-- | Required. The name of the project in which to create the schema. Format
-- is \`projects\/{project-id}\`.
pscsParent :: Lens' ProjectsSchemasCreate Text
pscsParent
  = lens _pscsParent (\ s a -> s{_pscsParent = a})

-- | V1 error format.
pscsXgafv :: Lens' ProjectsSchemasCreate (Maybe Xgafv)
pscsXgafv
  = lens _pscsXgafv (\ s a -> s{_pscsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsUploadProtocol :: Lens' ProjectsSchemasCreate (Maybe Text)
pscsUploadProtocol
  = lens _pscsUploadProtocol
      (\ s a -> s{_pscsUploadProtocol = a})

-- | OAuth access token.
pscsAccessToken :: Lens' ProjectsSchemasCreate (Maybe Text)
pscsAccessToken
  = lens _pscsAccessToken
      (\ s a -> s{_pscsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsUploadType :: Lens' ProjectsSchemasCreate (Maybe Text)
pscsUploadType
  = lens _pscsUploadType
      (\ s a -> s{_pscsUploadType = a})

-- | Multipart request metadata.
pscsPayload :: Lens' ProjectsSchemasCreate Schema
pscsPayload
  = lens _pscsPayload (\ s a -> s{_pscsPayload = a})

-- | The ID to use for the schema, which will become the final component of
-- the schema\'s resource name. See
-- https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names for
-- resource name constraints.
pscsSchemaId :: Lens' ProjectsSchemasCreate (Maybe Text)
pscsSchemaId
  = lens _pscsSchemaId (\ s a -> s{_pscsSchemaId = a})

-- | JSONP
pscsCallback :: Lens' ProjectsSchemasCreate (Maybe Text)
pscsCallback
  = lens _pscsCallback (\ s a -> s{_pscsCallback = a})

instance GoogleRequest ProjectsSchemasCreate where
        type Rs ProjectsSchemasCreate = Schema
        type Scopes ProjectsSchemasCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasCreate'{..}
          = go _pscsParent _pscsXgafv _pscsUploadProtocol
              _pscsAccessToken
              _pscsUploadType
              _pscsSchemaId
              _pscsCallback
              (Just AltJSON)
              _pscsPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasCreateResource)
                      mempty
