{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudProFiler.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudProFiler.Types.Product where

import           Network.Google.CloudProFiler.Types.Sum
import           Network.Google.Prelude

-- | Labels identify the deployment within the user universe and same target.
-- Validation regex for label names:
-- \`^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$\`. Value for an individual label
-- must be \<= 512 bytes, the total size of all label names and values must
-- be \<= 1024 bytes. Label named \"language\" can be used to record the
-- programming language of the profiled deployment. The standard choices
-- for the value include \"java\", \"go\", \"python\", \"ruby\",
-- \"nodejs\", \"php\", \"dotnet\". For deployments running on Google Cloud
-- Platform, \"zone\" or \"region\" label should be present describing the
-- deployment location. An example of a zone is \"us-central1-a\", an
-- example of a region is \"us-central1\" or \"us-central\".
--
-- /See:/ 'deploymentLabels' smart constructor.
newtype DeploymentLabels =
  DeploymentLabels'
    { _dlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlAddtional'
deploymentLabels
    :: HashMap Text Text -- ^ 'dlAddtional'
    -> DeploymentLabels
deploymentLabels pDlAddtional_ =
  DeploymentLabels' {_dlAddtional = _Coerce # pDlAddtional_}

dlAddtional :: Lens' DeploymentLabels (HashMap Text Text)
dlAddtional
  = lens _dlAddtional (\ s a -> s{_dlAddtional = a}) .
      _Coerce

instance FromJSON DeploymentLabels where
        parseJSON
          = withObject "DeploymentLabels"
              (\ o -> DeploymentLabels' <$> (parseJSONObject o))

instance ToJSON DeploymentLabels where
        toJSON = toJSON . _dlAddtional

-- | Profile resource.
--
-- /See:/ 'proFile' smart constructor.
data ProFile =
  ProFile'
    { _pfProFileBytes :: !(Maybe Bytes)
    , _pfName         :: !(Maybe Text)
    , _pfLabels       :: !(Maybe ProFileLabels)
    , _pfProFileType  :: !(Maybe ProFileProFileType)
    , _pfDuration     :: !(Maybe GDuration)
    , _pfDeployment   :: !(Maybe Deployment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfProFileBytes'
--
-- * 'pfName'
--
-- * 'pfLabels'
--
-- * 'pfProFileType'
--
-- * 'pfDuration'
--
-- * 'pfDeployment'
proFile
    :: ProFile
proFile =
  ProFile'
    { _pfProFileBytes = Nothing
    , _pfName = Nothing
    , _pfLabels = Nothing
    , _pfProFileType = Nothing
    , _pfDuration = Nothing
    , _pfDeployment = Nothing
    }

-- | Input only. Profile bytes, as a gzip compressed serialized proto, the
-- format is
-- https:\/\/github.com\/google\/pprof\/blob\/master\/proto\/profile.proto.
pfProFileBytes :: Lens' ProFile (Maybe ByteString)
pfProFileBytes
  = lens _pfProFileBytes
      (\ s a -> s{_pfProFileBytes = a})
      . mapping _Bytes

-- | Output only. Opaque, server-assigned, unique ID for this profile.
pfName :: Lens' ProFile (Maybe Text)
pfName = lens _pfName (\ s a -> s{_pfName = a})

-- | Input only. Labels associated to this specific profile. These labels
-- will get merged with the deployment labels for the final data set. See
-- documentation on deployment labels for validation rules and limits.
pfLabels :: Lens' ProFile (Maybe ProFileLabels)
pfLabels = lens _pfLabels (\ s a -> s{_pfLabels = a})

-- | Type of profile. For offline mode, this must be specified when creating
-- the profile. For online mode it is assigned and returned by the server.
pfProFileType :: Lens' ProFile (Maybe ProFileProFileType)
pfProFileType
  = lens _pfProFileType
      (\ s a -> s{_pfProFileType = a})

-- | Duration of the profiling session. Input (for the offline mode) or
-- output (for the online mode). The field represents requested profiling
-- duration. It may slightly differ from the effective profiling duration,
-- which is recorded in the profile data, in case the profiling can\'t be
-- stopped immediately (e.g. in case stopping the profiling is handled
-- asynchronously).
pfDuration :: Lens' ProFile (Maybe Scientific)
pfDuration
  = lens _pfDuration (\ s a -> s{_pfDuration = a}) .
      mapping _GDuration

-- | Deployment this profile corresponds to.
pfDeployment :: Lens' ProFile (Maybe Deployment)
pfDeployment
  = lens _pfDeployment (\ s a -> s{_pfDeployment = a})

instance FromJSON ProFile where
        parseJSON
          = withObject "ProFile"
              (\ o ->
                 ProFile' <$>
                   (o .:? "profileBytes") <*> (o .:? "name") <*>
                     (o .:? "labels")
                     <*> (o .:? "profileType")
                     <*> (o .:? "duration")
                     <*> (o .:? "deployment"))

instance ToJSON ProFile where
        toJSON ProFile'{..}
          = object
              (catMaybes
                 [("profileBytes" .=) <$> _pfProFileBytes,
                  ("name" .=) <$> _pfName, ("labels" .=) <$> _pfLabels,
                  ("profileType" .=) <$> _pfProFileType,
                  ("duration" .=) <$> _pfDuration,
                  ("deployment" .=) <$> _pfDeployment])

-- | CreateProfileRequest describes a profile resource online creation
-- request. The deployment field must be populated. The profile_type
-- specifies the list of profile types supported by the agent. The creation
-- call will hang until a profile of one of these types needs to be
-- collected.
--
-- /See:/ 'createProFileRequest' smart constructor.
data CreateProFileRequest =
  CreateProFileRequest'
    { _cpfrProFileType :: !(Maybe [Text])
    , _cpfrDeployment  :: !(Maybe Deployment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProFileRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpfrProFileType'
--
-- * 'cpfrDeployment'
createProFileRequest
    :: CreateProFileRequest
createProFileRequest =
  CreateProFileRequest' {_cpfrProFileType = Nothing, _cpfrDeployment = Nothing}

-- | One or more profile types that the agent is capable of providing.
cpfrProFileType :: Lens' CreateProFileRequest [Text]
cpfrProFileType
  = lens _cpfrProFileType
      (\ s a -> s{_cpfrProFileType = a})
      . _Default
      . _Coerce

-- | Deployment details.
cpfrDeployment :: Lens' CreateProFileRequest (Maybe Deployment)
cpfrDeployment
  = lens _cpfrDeployment
      (\ s a -> s{_cpfrDeployment = a})

instance FromJSON CreateProFileRequest where
        parseJSON
          = withObject "CreateProFileRequest"
              (\ o ->
                 CreateProFileRequest' <$>
                   (o .:? "profileType" .!= mempty) <*>
                     (o .:? "deployment"))

instance ToJSON CreateProFileRequest where
        toJSON CreateProFileRequest'{..}
          = object
              (catMaybes
                 [("profileType" .=) <$> _cpfrProFileType,
                  ("deployment" .=) <$> _cpfrDeployment])

-- | Input only. Labels associated to this specific profile. These labels
-- will get merged with the deployment labels for the final data set. See
-- documentation on deployment labels for validation rules and limits.
--
-- /See:/ 'proFileLabels' smart constructor.
newtype ProFileLabels =
  ProFileLabels'
    { _pflAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProFileLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pflAddtional'
proFileLabels
    :: HashMap Text Text -- ^ 'pflAddtional'
    -> ProFileLabels
proFileLabels pPflAddtional_ =
  ProFileLabels' {_pflAddtional = _Coerce # pPflAddtional_}

pflAddtional :: Lens' ProFileLabels (HashMap Text Text)
pflAddtional
  = lens _pflAddtional (\ s a -> s{_pflAddtional = a})
      . _Coerce

instance FromJSON ProFileLabels where
        parseJSON
          = withObject "ProFileLabels"
              (\ o -> ProFileLabels' <$> (parseJSONObject o))

instance ToJSON ProFileLabels where
        toJSON = toJSON . _pflAddtional

-- | Deployment contains the deployment identification information.
--
-- /See:/ 'deployment' smart constructor.
data Deployment =
  Deployment'
    { _dLabels    :: !(Maybe DeploymentLabels)
    , _dProjectId :: !(Maybe Text)
    , _dTarget    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLabels'
--
-- * 'dProjectId'
--
-- * 'dTarget'
deployment
    :: Deployment
deployment =
  Deployment' {_dLabels = Nothing, _dProjectId = Nothing, _dTarget = Nothing}

-- | Labels identify the deployment within the user universe and same target.
-- Validation regex for label names:
-- \`^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$\`. Value for an individual label
-- must be \<= 512 bytes, the total size of all label names and values must
-- be \<= 1024 bytes. Label named \"language\" can be used to record the
-- programming language of the profiled deployment. The standard choices
-- for the value include \"java\", \"go\", \"python\", \"ruby\",
-- \"nodejs\", \"php\", \"dotnet\". For deployments running on Google Cloud
-- Platform, \"zone\" or \"region\" label should be present describing the
-- deployment location. An example of a zone is \"us-central1-a\", an
-- example of a region is \"us-central1\" or \"us-central\".
dLabels :: Lens' Deployment (Maybe DeploymentLabels)
dLabels = lens _dLabels (\ s a -> s{_dLabels = a})

-- | Project ID is the ID of a cloud project. Validation regex:
-- \`^a-z{4,61}[a-z0-9]$\`.
dProjectId :: Lens' Deployment (Maybe Text)
dProjectId
  = lens _dProjectId (\ s a -> s{_dProjectId = a})

-- | Target is the service name used to group related deployments: * Service
-- name for GAE Flex \/ Standard. * Cluster and container name for GKE. *
-- User-specified string for direct GCE profiling (e.g. Java). * Job name
-- for Dataflow. Validation regex:
-- \`^[a-z]([-a-z0-9_.]{0,253}[a-z0-9])?$\`.
dTarget :: Lens' Deployment (Maybe Text)
dTarget = lens _dTarget (\ s a -> s{_dTarget = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment' <$>
                   (o .:? "labels") <*> (o .:? "projectId") <*>
                     (o .:? "target"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _dLabels,
                  ("projectId" .=) <$> _dProjectId,
                  ("target" .=) <$> _dTarget])
