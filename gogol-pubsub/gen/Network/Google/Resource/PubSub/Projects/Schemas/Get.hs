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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.get@.
module Network.Google.Resource.PubSub.Projects.Schemas.Get
    (
    -- * REST Resource
      ProjectsSchemasGetResource

    -- * Creating a Request
    , projectsSchemasGet
    , ProjectsSchemasGet

    -- * Request Lenses
    , prorXgafv
    , prorUploadProtocol
    , prorAccessToken
    , prorUploadType
    , prorName
    , prorView
    , prorCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.get@ method which the
-- 'ProjectsSchemasGet' request conforms to.
type ProjectsSchemasGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view" ProjectsSchemasGetView :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Schema

-- | Gets a schema.
--
-- /See:/ 'projectsSchemasGet' smart constructor.
data ProjectsSchemasGet =
  ProjectsSchemasGet'
    { _prorXgafv :: !(Maybe Xgafv)
    , _prorUploadProtocol :: !(Maybe Text)
    , _prorAccessToken :: !(Maybe Text)
    , _prorUploadType :: !(Maybe Text)
    , _prorName :: !Text
    , _prorView :: !(Maybe ProjectsSchemasGetView)
    , _prorCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorXgafv'
--
-- * 'prorUploadProtocol'
--
-- * 'prorAccessToken'
--
-- * 'prorUploadType'
--
-- * 'prorName'
--
-- * 'prorView'
--
-- * 'prorCallback'
projectsSchemasGet
    :: Text -- ^ 'prorName'
    -> ProjectsSchemasGet
projectsSchemasGet pProrName_ =
  ProjectsSchemasGet'
    { _prorXgafv = Nothing
    , _prorUploadProtocol = Nothing
    , _prorAccessToken = Nothing
    , _prorUploadType = Nothing
    , _prorName = pProrName_
    , _prorView = Nothing
    , _prorCallback = Nothing
    }


-- | V1 error format.
prorXgafv :: Lens' ProjectsSchemasGet (Maybe Xgafv)
prorXgafv
  = lens _prorXgafv (\ s a -> s{_prorXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prorUploadProtocol :: Lens' ProjectsSchemasGet (Maybe Text)
prorUploadProtocol
  = lens _prorUploadProtocol
      (\ s a -> s{_prorUploadProtocol = a})

-- | OAuth access token.
prorAccessToken :: Lens' ProjectsSchemasGet (Maybe Text)
prorAccessToken
  = lens _prorAccessToken
      (\ s a -> s{_prorAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prorUploadType :: Lens' ProjectsSchemasGet (Maybe Text)
prorUploadType
  = lens _prorUploadType
      (\ s a -> s{_prorUploadType = a})

-- | Required. The name of the schema to get. Format is
-- \`projects\/{project}\/schemas\/{schema}\`.
prorName :: Lens' ProjectsSchemasGet Text
prorName = lens _prorName (\ s a -> s{_prorName = a})

-- | The set of fields to return in the response. If not set, returns a
-- Schema with \`name\` and \`type\`, but not \`definition\`. Set to
-- \`FULL\` to retrieve all fields.
prorView :: Lens' ProjectsSchemasGet (Maybe ProjectsSchemasGetView)
prorView = lens _prorView (\ s a -> s{_prorView = a})

-- | JSONP
prorCallback :: Lens' ProjectsSchemasGet (Maybe Text)
prorCallback
  = lens _prorCallback (\ s a -> s{_prorCallback = a})

instance GoogleRequest ProjectsSchemasGet where
        type Rs ProjectsSchemasGet = Schema
        type Scopes ProjectsSchemasGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasGet'{..}
          = go _prorName _prorXgafv _prorUploadProtocol
              _prorAccessToken
              _prorUploadType
              _prorView
              _prorCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasGetResource)
                      mempty
