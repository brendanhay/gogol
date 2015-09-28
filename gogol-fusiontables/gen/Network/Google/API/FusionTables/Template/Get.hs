{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Template.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.get@.
module Network.Google.API.FusionTables.Template.Get
    (
    -- * REST Resource
      TemplateGetAPI

    -- * Creating a Request
    , templateGet'
    , TemplateGet'

    -- * Request Lenses
    , tggQuotaUser
    , tggPrettyPrint
    , tggTemplateId
    , tggUserIp
    , tggKey
    , tggOauthToken
    , tggTableId
    , tggFields
    , tggAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.template.get which the
-- 'TemplateGet'' request conforms to.
type TemplateGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'templateGet'' smart constructor.
data TemplateGet' = TemplateGet'
    { _tggQuotaUser   :: !(Maybe Text)
    , _tggPrettyPrint :: !Bool
    , _tggTemplateId  :: !Int32
    , _tggUserIp      :: !(Maybe Text)
    , _tggKey         :: !(Maybe Text)
    , _tggOauthToken  :: !(Maybe Text)
    , _tggTableId     :: !Text
    , _tggFields      :: !(Maybe Text)
    , _tggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggQuotaUser'
--
-- * 'tggPrettyPrint'
--
-- * 'tggTemplateId'
--
-- * 'tggUserIp'
--
-- * 'tggKey'
--
-- * 'tggOauthToken'
--
-- * 'tggTableId'
--
-- * 'tggFields'
--
-- * 'tggAlt'
templateGet'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateGet'
templateGet' pTggTemplateId_ pTggTableId_ =
    TemplateGet'
    { _tggQuotaUser = Nothing
    , _tggPrettyPrint = True
    , _tggTemplateId = pTggTemplateId_
    , _tggUserIp = Nothing
    , _tggKey = Nothing
    , _tggOauthToken = Nothing
    , _tggTableId = pTggTableId_
    , _tggFields = Nothing
    , _tggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tggQuotaUser :: Lens' TemplateGet' (Maybe Text)
tggQuotaUser
  = lens _tggQuotaUser (\ s a -> s{_tggQuotaUser = a})

-- | Returns response with indentations and line breaks.
tggPrettyPrint :: Lens' TemplateGet' Bool
tggPrettyPrint
  = lens _tggPrettyPrint
      (\ s a -> s{_tggPrettyPrint = a})

-- | Identifier for the template that is being requested
tggTemplateId :: Lens' TemplateGet' Int32
tggTemplateId
  = lens _tggTemplateId
      (\ s a -> s{_tggTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tggUserIp :: Lens' TemplateGet' (Maybe Text)
tggUserIp
  = lens _tggUserIp (\ s a -> s{_tggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tggKey :: Lens' TemplateGet' (Maybe Text)
tggKey = lens _tggKey (\ s a -> s{_tggKey = a})

-- | OAuth 2.0 token for the current user.
tggOauthToken :: Lens' TemplateGet' (Maybe Text)
tggOauthToken
  = lens _tggOauthToken
      (\ s a -> s{_tggOauthToken = a})

-- | Table to which the template belongs
tggTableId :: Lens' TemplateGet' Text
tggTableId
  = lens _tggTableId (\ s a -> s{_tggTableId = a})

-- | Selector specifying which fields to include in a partial response.
tggFields :: Lens' TemplateGet' (Maybe Text)
tggFields
  = lens _tggFields (\ s a -> s{_tggFields = a})

-- | Data format for the response.
tggAlt :: Lens' TemplateGet' Alt
tggAlt = lens _tggAlt (\ s a -> s{_tggAlt = a})

instance GoogleRequest TemplateGet' where
        type Rs TemplateGet' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateGet'{..}
          = go _tggQuotaUser (Just _tggPrettyPrint)
              _tggTemplateId
              _tggUserIp
              _tggKey
              _tggOauthToken
              _tggTableId
              _tggFields
              (Just _tggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateGetAPI) r u
