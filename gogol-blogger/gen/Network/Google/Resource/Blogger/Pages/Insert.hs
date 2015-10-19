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
-- Module      : Network.Google.Resource.Blogger.Pages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.insert@.
module Network.Google.Resource.Blogger.Pages.Insert
    (
    -- * REST Resource
      PagesInsertResource

    -- * Creating a Request
    , pagesInsert'
    , PagesInsert'

    -- * Request Lenses
    , piIsDraft
    , piBlogId
    , piPayload
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.insert@ method which the
-- 'PagesInsert'' request conforms to.
type PagesInsertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           QueryParam "isDraft" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Page :> Post '[JSON] Page

-- | Add a page.
--
-- /See:/ 'pagesInsert'' smart constructor.
data PagesInsert' = PagesInsert'
    { _piIsDraft :: !(Maybe Bool)
    , _piBlogId  :: !Text
    , _piPayload :: !Page
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piIsDraft'
--
-- * 'piBlogId'
--
-- * 'piPayload'
pagesInsert'
    :: Text -- ^ 'piBlogId'
    -> Page -- ^ 'piPayload'
    -> PagesInsert'
pagesInsert' pPiBlogId_ pPiPayload_ =
    PagesInsert'
    { _piIsDraft = Nothing
    , _piBlogId = pPiBlogId_
    , _piPayload = pPiPayload_
    }

-- | Whether to create the page as a draft (default: false).
piIsDraft :: Lens' PagesInsert' (Maybe Bool)
piIsDraft
  = lens _piIsDraft (\ s a -> s{_piIsDraft = a})

-- | ID of the blog to add the page to.
piBlogId :: Lens' PagesInsert' Text
piBlogId = lens _piBlogId (\ s a -> s{_piBlogId = a})

-- | Multipart request metadata.
piPayload :: Lens' PagesInsert' Page
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

instance GoogleRequest PagesInsert' where
        type Rs PagesInsert' = Page
        requestClient PagesInsert'{..}
          = go _piBlogId _piIsDraft (Just AltJSON) _piPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesInsertResource)
                      mempty
