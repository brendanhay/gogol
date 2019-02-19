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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a \`Ruleset\` from \`Source\`. The \`Ruleset\` is given a unique
-- generated name which is returned to the caller. \`Source\` containing
-- syntactic or semantics errors will result in an error response
-- indicating the first error encountered. For a detailed view of
-- \`Source\` issues, use TestRuleset.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.create@.
module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create
    (
    -- * REST Resource
      ProjectsRulesetsCreateResource

    -- * Creating a Request
    , projectsRulesetsCreate
    , ProjectsRulesetsCreate

    -- * Request Lenses
    , prcXgafv
    , prcUploadProtocol
    , prcAccessToken
    , prcUploadType
    , prcPayload
    , prcName
    , prcCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.rulesets.create@ method which the
-- 'ProjectsRulesetsCreate' request conforms to.
type ProjectsRulesetsCreateResource =
     "v1" :>
       Capture "name" Text :>
         "rulesets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Ruleset :> Post '[JSON] Ruleset

-- | Create a \`Ruleset\` from \`Source\`. The \`Ruleset\` is given a unique
-- generated name which is returned to the caller. \`Source\` containing
-- syntactic or semantics errors will result in an error response
-- indicating the first error encountered. For a detailed view of
-- \`Source\` issues, use TestRuleset.
--
-- /See:/ 'projectsRulesetsCreate' smart constructor.
data ProjectsRulesetsCreate =
  ProjectsRulesetsCreate'
    { _prcXgafv          :: !(Maybe Xgafv)
    , _prcUploadProtocol :: !(Maybe Text)
    , _prcAccessToken    :: !(Maybe Text)
    , _prcUploadType     :: !(Maybe Text)
    , _prcPayload        :: !Ruleset
    , _prcName           :: !Text
    , _prcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRulesetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcXgafv'
--
-- * 'prcUploadProtocol'
--
-- * 'prcAccessToken'
--
-- * 'prcUploadType'
--
-- * 'prcPayload'
--
-- * 'prcName'
--
-- * 'prcCallback'
projectsRulesetsCreate
    :: Ruleset -- ^ 'prcPayload'
    -> Text -- ^ 'prcName'
    -> ProjectsRulesetsCreate
projectsRulesetsCreate pPrcPayload_ pPrcName_ =
  ProjectsRulesetsCreate'
    { _prcXgafv = Nothing
    , _prcUploadProtocol = Nothing
    , _prcAccessToken = Nothing
    , _prcUploadType = Nothing
    , _prcPayload = pPrcPayload_
    , _prcName = pPrcName_
    , _prcCallback = Nothing
    }


-- | V1 error format.
prcXgafv :: Lens' ProjectsRulesetsCreate (Maybe Xgafv)
prcXgafv = lens _prcXgafv (\ s a -> s{_prcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcUploadProtocol :: Lens' ProjectsRulesetsCreate (Maybe Text)
prcUploadProtocol
  = lens _prcUploadProtocol
      (\ s a -> s{_prcUploadProtocol = a})

-- | OAuth access token.
prcAccessToken :: Lens' ProjectsRulesetsCreate (Maybe Text)
prcAccessToken
  = lens _prcAccessToken
      (\ s a -> s{_prcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcUploadType :: Lens' ProjectsRulesetsCreate (Maybe Text)
prcUploadType
  = lens _prcUploadType
      (\ s a -> s{_prcUploadType = a})

-- | Multipart request metadata.
prcPayload :: Lens' ProjectsRulesetsCreate Ruleset
prcPayload
  = lens _prcPayload (\ s a -> s{_prcPayload = a})

-- | Resource name for Project which owns this \`Ruleset\`. Format:
-- \`projects\/{project_id}\`
prcName :: Lens' ProjectsRulesetsCreate Text
prcName = lens _prcName (\ s a -> s{_prcName = a})

-- | JSONP
prcCallback :: Lens' ProjectsRulesetsCreate (Maybe Text)
prcCallback
  = lens _prcCallback (\ s a -> s{_prcCallback = a})

instance GoogleRequest ProjectsRulesetsCreate where
        type Rs ProjectsRulesetsCreate = Ruleset
        type Scopes ProjectsRulesetsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient ProjectsRulesetsCreate'{..}
          = go _prcName _prcXgafv _prcUploadProtocol
              _prcAccessToken
              _prcUploadType
              _prcCallback
              (Just AltJSON)
              _prcPayload
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRulesetsCreateResource)
                      mempty
