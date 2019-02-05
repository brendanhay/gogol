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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a \`Ruleset\` by name including the full \`Source\` contents.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.get@.
module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get
    (
    -- * REST Resource
      ProjectsRulesetsGetResource

    -- * Creating a Request
    , projectsRulesetsGet
    , ProjectsRulesetsGet

    -- * Request Lenses
    , prgXgafv
    , prgUploadProtocol
    , prgAccessToken
    , prgUploadType
    , prgName
    , prgCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.rulesets.get@ method which the
-- 'ProjectsRulesetsGet' request conforms to.
type ProjectsRulesetsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Ruleset

-- | Get a \`Ruleset\` by name including the full \`Source\` contents.
--
-- /See:/ 'projectsRulesetsGet' smart constructor.
data ProjectsRulesetsGet = ProjectsRulesetsGet'
    { _prgXgafv          :: !(Maybe Xgafv)
    , _prgUploadProtocol :: !(Maybe Text)
    , _prgAccessToken    :: !(Maybe Text)
    , _prgUploadType     :: !(Maybe Text)
    , _prgName           :: !Text
    , _prgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRulesetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prgXgafv'
--
-- * 'prgUploadProtocol'
--
-- * 'prgAccessToken'
--
-- * 'prgUploadType'
--
-- * 'prgName'
--
-- * 'prgCallback'
projectsRulesetsGet
    :: Text -- ^ 'prgName'
    -> ProjectsRulesetsGet
projectsRulesetsGet pPrgName_ =
    ProjectsRulesetsGet'
    { _prgXgafv = Nothing
    , _prgUploadProtocol = Nothing
    , _prgAccessToken = Nothing
    , _prgUploadType = Nothing
    , _prgName = pPrgName_
    , _prgCallback = Nothing
    }

-- | V1 error format.
prgXgafv :: Lens' ProjectsRulesetsGet (Maybe Xgafv)
prgXgafv = lens _prgXgafv (\ s a -> s{_prgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prgUploadProtocol :: Lens' ProjectsRulesetsGet (Maybe Text)
prgUploadProtocol
  = lens _prgUploadProtocol
      (\ s a -> s{_prgUploadProtocol = a})

-- | OAuth access token.
prgAccessToken :: Lens' ProjectsRulesetsGet (Maybe Text)
prgAccessToken
  = lens _prgAccessToken
      (\ s a -> s{_prgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prgUploadType :: Lens' ProjectsRulesetsGet (Maybe Text)
prgUploadType
  = lens _prgUploadType
      (\ s a -> s{_prgUploadType = a})

-- | Resource name for the ruleset to get. Format:
-- \`projects\/{project_id}\/rulesets\/{ruleset_id}\`
prgName :: Lens' ProjectsRulesetsGet Text
prgName = lens _prgName (\ s a -> s{_prgName = a})

-- | JSONP
prgCallback :: Lens' ProjectsRulesetsGet (Maybe Text)
prgCallback
  = lens _prgCallback (\ s a -> s{_prgCallback = a})

instance GoogleRequest ProjectsRulesetsGet where
        type Rs ProjectsRulesetsGet = Ruleset
        type Scopes ProjectsRulesetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient ProjectsRulesetsGet'{..}
          = go _prgName _prgXgafv _prgUploadProtocol
              _prgAccessToken
              _prgUploadType
              _prgCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRulesetsGetResource)
                      mempty
