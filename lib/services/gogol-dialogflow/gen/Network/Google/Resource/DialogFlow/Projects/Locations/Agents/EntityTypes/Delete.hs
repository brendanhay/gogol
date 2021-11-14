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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified entity type. Note: You should always train a flow
-- prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.EntityTypes.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsEntityTypesDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsEntityTypesDelete
    , ProjectsLocationsAgentsEntityTypesDelete

    -- * Request Lenses
    , plaetdXgafv
    , plaetdUploadProtocol
    , plaetdForce
    , plaetdAccessToken
    , plaetdUploadType
    , plaetdName
    , plaetdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.delete@ method which the
-- 'ProjectsLocationsAgentsEntityTypesDelete' request conforms to.
type ProjectsLocationsAgentsEntityTypesDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified entity type. Note: You should always train a flow
-- prior to sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsEntityTypesDelete' smart constructor.
data ProjectsLocationsAgentsEntityTypesDelete =
  ProjectsLocationsAgentsEntityTypesDelete'
    { _plaetdXgafv :: !(Maybe Xgafv)
    , _plaetdUploadProtocol :: !(Maybe Text)
    , _plaetdForce :: !(Maybe Bool)
    , _plaetdAccessToken :: !(Maybe Text)
    , _plaetdUploadType :: !(Maybe Text)
    , _plaetdName :: !Text
    , _plaetdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEntityTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaetdXgafv'
--
-- * 'plaetdUploadProtocol'
--
-- * 'plaetdForce'
--
-- * 'plaetdAccessToken'
--
-- * 'plaetdUploadType'
--
-- * 'plaetdName'
--
-- * 'plaetdCallback'
projectsLocationsAgentsEntityTypesDelete
    :: Text -- ^ 'plaetdName'
    -> ProjectsLocationsAgentsEntityTypesDelete
projectsLocationsAgentsEntityTypesDelete pPlaetdName_ =
  ProjectsLocationsAgentsEntityTypesDelete'
    { _plaetdXgafv = Nothing
    , _plaetdUploadProtocol = Nothing
    , _plaetdForce = Nothing
    , _plaetdAccessToken = Nothing
    , _plaetdUploadType = Nothing
    , _plaetdName = pPlaetdName_
    , _plaetdCallback = Nothing
    }


-- | V1 error format.
plaetdXgafv :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Xgafv)
plaetdXgafv
  = lens _plaetdXgafv (\ s a -> s{_plaetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaetdUploadProtocol :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Text)
plaetdUploadProtocol
  = lens _plaetdUploadProtocol
      (\ s a -> s{_plaetdUploadProtocol = a})

-- | This field has no effect for entity type not being used. For entity
-- types that are used by intents or pages: * If \`force\` is set to false,
-- an error will be returned with message indicating the referencing
-- resources. * If \`force\` is set to true, Dialogflow will remove the
-- entity type, as well as any references to the entity type (i.e. Page
-- parameter of the entity type will be changed to \'\'sys.any\' and intent
-- parameter of the entity type will be removed).
plaetdForce :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Bool)
plaetdForce
  = lens _plaetdForce (\ s a -> s{_plaetdForce = a})

-- | OAuth access token.
plaetdAccessToken :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Text)
plaetdAccessToken
  = lens _plaetdAccessToken
      (\ s a -> s{_plaetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaetdUploadType :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Text)
plaetdUploadType
  = lens _plaetdUploadType
      (\ s a -> s{_plaetdUploadType = a})

-- | Required. The name of the entity type to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\`.
plaetdName :: Lens' ProjectsLocationsAgentsEntityTypesDelete Text
plaetdName
  = lens _plaetdName (\ s a -> s{_plaetdName = a})

-- | JSONP
plaetdCallback :: Lens' ProjectsLocationsAgentsEntityTypesDelete (Maybe Text)
plaetdCallback
  = lens _plaetdCallback
      (\ s a -> s{_plaetdCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEntityTypesDelete
         where
        type Rs ProjectsLocationsAgentsEntityTypesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsAgentsEntityTypesDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEntityTypesDelete'{..}
          = go _plaetdName _plaetdXgafv _plaetdUploadProtocol
              _plaetdForce
              _plaetdAccessToken
              _plaetdUploadType
              _plaetdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEntityTypesDeleteResource)
                      mempty
