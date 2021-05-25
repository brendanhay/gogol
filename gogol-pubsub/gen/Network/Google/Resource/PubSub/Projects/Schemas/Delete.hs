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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.delete@.
module Network.Google.Resource.PubSub.Projects.Schemas.Delete
    (
    -- * REST Resource
      ProjectsSchemasDeleteResource

    -- * Creating a Request
    , projectsSchemasDelete
    , ProjectsSchemasDelete

    -- * Request Lenses
    , psdsXgafv
    , psdsUploadProtocol
    , psdsAccessToken
    , psdsUploadType
    , psdsName
    , psdsCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.delete@ method which the
-- 'ProjectsSchemasDelete' request conforms to.
type ProjectsSchemasDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a schema.
--
-- /See:/ 'projectsSchemasDelete' smart constructor.
data ProjectsSchemasDelete =
  ProjectsSchemasDelete'
    { _psdsXgafv :: !(Maybe Xgafv)
    , _psdsUploadProtocol :: !(Maybe Text)
    , _psdsAccessToken :: !(Maybe Text)
    , _psdsUploadType :: !(Maybe Text)
    , _psdsName :: !Text
    , _psdsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdsXgafv'
--
-- * 'psdsUploadProtocol'
--
-- * 'psdsAccessToken'
--
-- * 'psdsUploadType'
--
-- * 'psdsName'
--
-- * 'psdsCallback'
projectsSchemasDelete
    :: Text -- ^ 'psdsName'
    -> ProjectsSchemasDelete
projectsSchemasDelete pPsdsName_ =
  ProjectsSchemasDelete'
    { _psdsXgafv = Nothing
    , _psdsUploadProtocol = Nothing
    , _psdsAccessToken = Nothing
    , _psdsUploadType = Nothing
    , _psdsName = pPsdsName_
    , _psdsCallback = Nothing
    }


-- | V1 error format.
psdsXgafv :: Lens' ProjectsSchemasDelete (Maybe Xgafv)
psdsXgafv
  = lens _psdsXgafv (\ s a -> s{_psdsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdsUploadProtocol :: Lens' ProjectsSchemasDelete (Maybe Text)
psdsUploadProtocol
  = lens _psdsUploadProtocol
      (\ s a -> s{_psdsUploadProtocol = a})

-- | OAuth access token.
psdsAccessToken :: Lens' ProjectsSchemasDelete (Maybe Text)
psdsAccessToken
  = lens _psdsAccessToken
      (\ s a -> s{_psdsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdsUploadType :: Lens' ProjectsSchemasDelete (Maybe Text)
psdsUploadType
  = lens _psdsUploadType
      (\ s a -> s{_psdsUploadType = a})

-- | Required. Name of the schema to delete. Format is
-- \`projects\/{project}\/schemas\/{schema}\`.
psdsName :: Lens' ProjectsSchemasDelete Text
psdsName = lens _psdsName (\ s a -> s{_psdsName = a})

-- | JSONP
psdsCallback :: Lens' ProjectsSchemasDelete (Maybe Text)
psdsCallback
  = lens _psdsCallback (\ s a -> s{_psdsCallback = a})

instance GoogleRequest ProjectsSchemasDelete where
        type Rs ProjectsSchemasDelete = Empty
        type Scopes ProjectsSchemasDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasDelete'{..}
          = go _psdsName _psdsXgafv _psdsUploadProtocol
              _psdsAccessToken
              _psdsUploadType
              _psdsCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasDeleteResource)
                      mempty
