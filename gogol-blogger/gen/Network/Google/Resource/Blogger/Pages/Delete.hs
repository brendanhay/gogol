{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Pages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesDelete@.
module Blogger.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteAPI

    -- * Creating a Request
    , pagesDelete
    , PagesDelete

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIp
    , pdBlogId
    , pdPageId
    , pdKey
    , pdOauthToken
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesDelete@ which the
-- 'PagesDelete' request conforms to.
type PagesDeleteAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :> Capture "pageId" Text :> Delete '[JSON] ()

-- | Delete a page by ID.
--
-- /See:/ 'pagesDelete' smart constructor.
data PagesDelete = PagesDelete
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdPrettyPrint :: !Bool
    , _pdUserIp      :: !(Maybe Text)
    , _pdBlogId      :: !Text
    , _pdPageId      :: !Text
    , _pdKey         :: !(Maybe Text)
    , _pdOauthToken  :: !(Maybe Text)
    , _pdFields      :: !(Maybe Text)
    , _pdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIp'
--
-- * 'pdBlogId'
--
-- * 'pdPageId'
--
-- * 'pdKey'
--
-- * 'pdOauthToken'
--
-- * 'pdFields'
--
-- * 'pdAlt'
pagesDelete
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesDelete
pagesDelete pPdBlogId_ pPdPageId_ =
    PagesDelete
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIp = Nothing
    , _pdBlogId = pPdBlogId_
    , _pdPageId = pPdPageId_
    , _pdKey = Nothing
    , _pdOauthToken = Nothing
    , _pdFields = Nothing
    , _pdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PagesDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PagesDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' PagesDelete' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

-- | The ID of the Blog.
pdBlogId :: Lens' PagesDelete' Text
pdBlogId = lens _pdBlogId (\ s a -> s{_pdBlogId = a})

-- | The ID of the Page.
pdPageId :: Lens' PagesDelete' Text
pdPageId = lens _pdPageId (\ s a -> s{_pdPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PagesDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' PagesDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PagesDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' PagesDelete' Text
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest PagesDelete' where
        type Rs PagesDelete' = ()
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesDelete{..}
          = go _pdQuotaUser _pdPrettyPrint _pdUserIp _pdBlogId
              _pdPageId
              _pdKey
              _pdOauthToken
              _pdFields
              _pdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesDeleteAPI) r u
