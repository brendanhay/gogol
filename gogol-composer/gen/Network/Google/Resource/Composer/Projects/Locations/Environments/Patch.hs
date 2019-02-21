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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.Environments.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.patch@.
module Network.Google.Resource.Composer.Projects.Locations.Environments.Patch
    (
    -- * REST Resource
      ProjectsLocationsEnvironmentsPatchResource

    -- * Creating a Request
    , projectsLocationsEnvironmentsPatch
    , ProjectsLocationsEnvironmentsPatch

    -- * Request Lenses
    , plepXgafv
    , plepUploadProtocol
    , plepUpdateMask
    , plepAccessToken
    , plepUploadType
    , plepPayload
    , plepName
    , plepCallback
    ) where

import           Network.Google.Composer.Types
import           Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.environments.patch@ method which the
-- 'ProjectsLocationsEnvironmentsPatch' request conforms to.
type ProjectsLocationsEnvironmentsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Environment :>
                         Patch '[JSON] Operation

-- | Update an environment.
--
-- /See:/ 'projectsLocationsEnvironmentsPatch' smart constructor.
data ProjectsLocationsEnvironmentsPatch =
  ProjectsLocationsEnvironmentsPatch'
    { _plepXgafv          :: !(Maybe Xgafv)
    , _plepUploadProtocol :: !(Maybe Text)
    , _plepUpdateMask     :: !(Maybe GFieldMask)
    , _plepAccessToken    :: !(Maybe Text)
    , _plepUploadType     :: !(Maybe Text)
    , _plepPayload        :: !Environment
    , _plepName           :: !Text
    , _plepCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsEnvironmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plepXgafv'
--
-- * 'plepUploadProtocol'
--
-- * 'plepUpdateMask'
--
-- * 'plepAccessToken'
--
-- * 'plepUploadType'
--
-- * 'plepPayload'
--
-- * 'plepName'
--
-- * 'plepCallback'
projectsLocationsEnvironmentsPatch
    :: Environment -- ^ 'plepPayload'
    -> Text -- ^ 'plepName'
    -> ProjectsLocationsEnvironmentsPatch
projectsLocationsEnvironmentsPatch pPlepPayload_ pPlepName_ =
  ProjectsLocationsEnvironmentsPatch'
    { _plepXgafv = Nothing
    , _plepUploadProtocol = Nothing
    , _plepUpdateMask = Nothing
    , _plepAccessToken = Nothing
    , _plepUploadType = Nothing
    , _plepPayload = pPlepPayload_
    , _plepName = pPlepName_
    , _plepCallback = Nothing
    }


-- | V1 error format.
plepXgafv :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe Xgafv)
plepXgafv
  = lens _plepXgafv (\ s a -> s{_plepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plepUploadProtocol :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe Text)
plepUploadProtocol
  = lens _plepUploadProtocol
      (\ s a -> s{_plepUploadProtocol = a})

-- | Required. A comma-separated list of paths, relative to \`Environment\`,
-- of fields to update. For example, to set the version of scikit-learn to
-- install in the environment to 0.19.0 and to remove an existing
-- installation of numpy, the \`updateMask\` parameter would include the
-- following two \`paths\` values:
-- \"config.softwareConfig.pypiPackages.scikit-learn\" and
-- \"config.softwareConfig.pypiPackages.numpy\". The included patch
-- environment would specify the scikit-learn version as follows: {
-- \"config\":{ \"softwareConfig\":{ \"pypiPackages\":{
-- \"scikit-learn\":\"==0.19.0\" } } } } Note that in the above example,
-- any existing PyPI packages other than scikit-learn and numpy will be
-- unaffected. Only one update type may be included in a single request\'s
-- \`updateMask\`. For example, one cannot update both the PyPI packages
-- and labels in the same request. However, it is possible to update
-- multiple members of a map field simultaneously in the same request. For
-- example, to set the labels \"label1\" and \"label2\" while clearing
-- \"label3\" (assuming it already exists), one can provide the paths
-- \"labels.label1\", \"labels.label2\", and \"labels.label3\" and populate
-- the patch environment as follows: { \"labels\":{
-- \"label1\":\"new-label1-value\" \"label2\":\"new-label2-value\" } } Note
-- that in the above example, any existing labels that are not included in
-- the \`updateMask\` will be unaffected. It is also possible to replace an
-- entire map field by providing the map field\'s path in the
-- \`updateMask\`. The new value of the field will be that which is
-- provided in the patch environment. For example, to delete all
-- pre-existing user-specified PyPI packages and install botocore at
-- version 1.7.14, the \`updateMask\` would contain the path
-- \"config.softwareConfig.pypiPackages\", and the patch environment would
-- be the following: { \"config\":{ \"softwareConfig\":{ \"pypiPackages\":{
-- \"botocore\":\"==1.7.14\" } } } } **Note:** Only the following fields
-- can be updated:
-- > +-----------------------------------+-----------------------------------+
-- > | __Mask__                          | __Purpose__                       |
-- > +-----------------------------------+-----------------------------------+
-- > | config.softwareConfig.pypiPackage | Replace all custom custom PyPI    |
-- > | s                                 | packages. If a replacement        |
-- > |                                   | package map is not included in    |
-- > |                                   | \`environment\`, all custom PyPI  |
-- > |                                   | packages are cleared. It is an    |
-- > |                                   | error to provide both this mask   |
-- > |                                   | and a mask specifying an          |
-- > |                                   | individual package.               |
-- > +-----------------------------------+-----------------------------------+
-- > | config.softwareConfig.pypiPackage | Update the custom PyPI package    |
-- > | s.packagename                     | packagename, preserving other     |
-- > |                                   | packages. To delete the package,  |
-- > |                                   | include it in \`updateMask\`, and |
-- > |                                   | omit the mapping for it in        |
-- > |                                   | \`environment.config.softwareConf |
-- > |                                   | ig.pypiPackages\`.                |
-- > |                                   | It is an error to provide both a  |
-- > |                                   | mask of this form and the         |
-- > |                                   | \"config.softwareConfig.pypiPacka |
-- > |                                   | ges\"                             |
-- > |                                   | mask.                             |
-- > +-----------------------------------+-----------------------------------+
-- > | labels                            | Replace all environment labels.   |
-- > |                                   | If a replacement labels map is    |
-- > |                                   | not included in \`environment\`,  |
-- > |                                   | all labels are cleared. It is an  |
-- > |                                   | error to provide both this mask   |
-- > |                                   | and a mask specifying one or more |
-- > |                                   | individual labels.                |
-- > +-----------------------------------+-----------------------------------+
-- > | labels.labelName                  | Set the label named labelName,    |
-- > |                                   | while preserving other labels. To |
-- > |                                   | delete the label, include it in   |
-- > |                                   | \`updateMask\` and omit its       |
-- > |                                   | mapping in                        |
-- > |                                   | \`environment.labels\`. It is an  |
-- > |                                   | error to provide both a mask of   |
-- > |                                   | this form and the \"labels\"      |
-- > |                                   | mask.                             |
-- > +-----------------------------------+-----------------------------------+
-- > | config.nodeCount                  | Horizontally scale the number of  |
-- > |                                   | nodes in the environment. An      |
-- > |                                   | integer greater than or equal to  |
-- > |                                   | 3 must be provided in the         |
-- > |                                   | \`config.nodeCount\` field.       |
-- > +-----------------------------------+-----------------------------------+
-- > | config.softwareConfig.airflowConf | Replace all Apache Airflow config |
-- > | igOverrides                       | overrides. If a replacement       |
-- > |                                   | config overrides map is not       |
-- > |                                   | included in \`environment\`, all  |
-- > |                                   | config overrides are cleared. It  |
-- > |                                   | is an error to provide both this  |
-- > |                                   | mask and a mask specifying one or |
-- > |                                   | more individual config overrides. |
-- > +-----------------------------------+-----------------------------------+
-- > | config.softwareConfig.airflowConf | Override the Apache Airflow       |
-- > | igOverrides.section-name          | config property name in the       |
-- > |                                   | section named section, preserving |
-- > |                                   | other properties. To delete the   |
-- > |                                   | property override, include it in  |
-- > |                                   | \`updateMask\` and omit its       |
-- > |                                   | mapping in                        |
-- > |                                   | \`environment.config.softwareConf |
-- > |                                   | ig.airflowConfigOverrides\`.      |
-- > |                                   | It is an error to provide both a  |
-- > |                                   | mask of this form and the         |
-- > |                                   | \"config.softwareConfig.airflowCo |
-- > |                                   | nfigOverrides\"                   |
-- > |                                   | mask.                             |
-- > +-----------------------------------+-----------------------------------+
-- > | config.softwareConfig.envVariable | Replace all environment           |
-- > | s                                 | variables. If a replacement       |
-- > |                                   | environment variable map is not   |
-- > |                                   | included in \`environment\`, all  |
-- > |                                   | custom environment variables are  |
-- > |                                   | cleared. It is an error to        |
-- > |                                   | provide both this mask and a mask |
-- > |                                   | specifying one or more individual |
-- > |                                   | environment variables.            |
-- > +-----------------------------------+-----------------------------------+
plepUpdateMask :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe GFieldMask)
plepUpdateMask
  = lens _plepUpdateMask
      (\ s a -> s{_plepUpdateMask = a})

-- | OAuth access token.
plepAccessToken :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe Text)
plepAccessToken
  = lens _plepAccessToken
      (\ s a -> s{_plepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plepUploadType :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe Text)
plepUploadType
  = lens _plepUploadType
      (\ s a -> s{_plepUploadType = a})

-- | Multipart request metadata.
plepPayload :: Lens' ProjectsLocationsEnvironmentsPatch Environment
plepPayload
  = lens _plepPayload (\ s a -> s{_plepPayload = a})

-- | The relative resource name of the environment to update, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
plepName :: Lens' ProjectsLocationsEnvironmentsPatch Text
plepName = lens _plepName (\ s a -> s{_plepName = a})

-- | JSONP
plepCallback :: Lens' ProjectsLocationsEnvironmentsPatch (Maybe Text)
plepCallback
  = lens _plepCallback (\ s a -> s{_plepCallback = a})

instance GoogleRequest
           ProjectsLocationsEnvironmentsPatch
         where
        type Rs ProjectsLocationsEnvironmentsPatch =
             Operation
        type Scopes ProjectsLocationsEnvironmentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsEnvironmentsPatch'{..}
          = go _plepName _plepXgafv _plepUploadProtocol
              _plepUpdateMask
              _plepAccessToken
              _plepUploadType
              _plepCallback
              (Just AltJSON)
              _plepPayload
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsEnvironmentsPatchResource)
                      mempty
